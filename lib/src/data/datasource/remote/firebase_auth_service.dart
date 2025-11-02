import 'package:artemis_app/src/core/error/auth_exception.dart';
import 'package:artemis_app/src/data/datasource/contracts/auth_datasource.dart';
import 'package:artemis_app/src/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService implements IAuthDatasource {
  final firebase_auth.FirebaseAuth _auth;
  final GoogleSignIn _google;

  FirebaseAuthService({
    required firebase_auth.FirebaseAuth? auth,
    required GoogleSignIn? google,
  }) : _auth = auth ?? firebase_auth.FirebaseAuth.instance,
       _google = google ?? GoogleSignIn(scopes: const ['email']);

  @override
  Stream<UserModel?> authState() => _auth.authStateChanges().map(
    (u) => u == null ? null : UserModel.fromFirebaseUser(u),
  );

  @override
  Future<UserModel?> signInWithGoogle() async {
    try {
      final acc = await _google.signIn();

      // User cancelled the sign-in
      if (acc == null) {
        throw const AuthCancelledException();
      }

      final auth = await acc.authentication;

      // Invalid token
      if (auth.idToken == null) {
        throw const AuthInvalidTokenException();
      }

      final cred = firebase_auth.GoogleAuthProvider.credential(
        idToken: auth.idToken,
        accessToken: auth.accessToken,
      );

      try {
        final userCred = await _auth.signInWithCredential(cred);
        final u = userCred.user;

        if (u == null) {
          throw const AuthGenericException('Failed to create user session');
        }

        // If Firebase does not have a displayName, use Google's and update it
        if (u.displayName == null && acc.displayName != null) {
          await u.updateDisplayName(acc.displayName);
        }

        // If Firebase does not have a photoURL, use Google's and update it
        if (u.photoURL == null && acc.photoUrl != null) {
          await u.updatePhotoURL(acc.photoUrl);
        }

        return UserModel.fromFirebaseUser(u);
      } on firebase_auth.FirebaseAuthException catch (e) {
        // Handle Firebase-specific errors
        if (e.code == 'network-request-failed') {
          throw const AuthNetworkException();
        } else if (e.code == 'account-exists-with-different-credential') {
          throw const AuthGenericException(
            'Account already exists with different credentials',
          );
        } else {
          throw AuthGenericException(e.message ?? 'Authentication failed');
        }
      }
    } on PlatformException catch (e) {
      // Handle platform-specific errors (Google Sign In)
      if (e.code == 'sign_in_canceled' || e.code == 'sign_in_cancelled') {
        throw const AuthCancelledException();
      } else if (e.code == 'sign_in_failed') {
        final message = e.message ?? '';
        if (message.contains('network') || message.contains('internet')) {
          throw const AuthNetworkException();
        } else if (message.contains('account') ||
            message.contains('no account')) {
          throw const NoGoogleAccountException();
        }
        throw AuthGenericException(e.message ?? 'Sign in failed');
      } else if (e.code.contains('network') ||
          e.message?.contains('network') == true) {
        throw const AuthNetworkException();
      }
      throw AuthGenericException(e.message ?? 'Authentication error');
    } on AuthException {
      // Re-throw our custom exceptions
      rethrow;
    } catch (e) {
      // Generic error handling
      if (e.toString().contains('network') ||
          e.toString().contains('internet') ||
          e.toString().contains('connection')) {
        throw const AuthNetworkException();
      }
      throw AuthGenericException(e.toString());
    }
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
    try {
      await _google.signOut();
    } catch (_) {}
  }

  @override
  UserModel? current() {
    final u = _auth.currentUser;
    return u == null ? null : UserModel.fromFirebaseUser(u);
  }
}

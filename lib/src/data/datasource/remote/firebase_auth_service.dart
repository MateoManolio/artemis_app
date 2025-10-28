import 'package:artemis_app/src/data/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';

class FirebaseAuthService {
  final firebase_auth.FirebaseAuth _auth;
  final GoogleSignIn _google;

  FirebaseAuthService({
    required firebase_auth.FirebaseAuth? auth,
    required GoogleSignIn? google,
  })  : _auth = auth ?? firebase_auth.FirebaseAuth.instance,
        _google = google ?? GoogleSignIn(scopes: const ['email']);

  Stream<UserModel?> authState() =>
      _auth.authStateChanges().map((u) => u == null ? null : UserModel.fromFirebaseUser(u));

  Future<UserModel?> signInWithGoogle() async {
    final acc = await _google.signIn();
    if (acc == null) return null; // cancelado

    final auth = await acc.authentication;
    if (auth.idToken == null) {
      throw StateError('Google idToken es nulo');
    }

    final cred = firebase_auth.GoogleAuthProvider.credential(
      idToken: auth.idToken,
      accessToken: auth.accessToken,
    );

    final userCred = await _auth.signInWithCredential(cred);
    final u = userCred.user;
    return u == null ? null : UserModel.fromFirebaseUser(u);
  }

  Future<void> signOut() async {
    await _auth.signOut();
    try { await _google.signOut(); } catch (_) {}
  }

  UserModel? current() {
    final u = _auth.currentUser;
    return u == null ? null : UserModel.fromFirebaseUser(u);
  }
}
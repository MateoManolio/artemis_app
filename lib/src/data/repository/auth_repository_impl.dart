import 'package:artemis_app/src/data/datasource/contracts/auth_datasource.dart';
import 'package:artemis_app/src/data/datasource/contracts/user_local_service_datasource.dart';
import 'package:artemis_app/src/domain/contracts/auth_repository.dart';
import 'package:artemis_app/src/domain/entity/user.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final IAuthDatasource _remote;
  final IUserLocalServiceDatasource _localService;

  AuthRepositoryImpl(this._remote, this._localService);

  @override
  Stream<User?> authStateChanges() =>
      _remote.authState().map((m) => m?.toDomain());

  @override
  User? get currentUser {
    // Try to get from Firebase first, then fallback to local storage
    final firebaseUser = _remote.current()?.toDomain();
    if (firebaseUser != null) {
      return firebaseUser;
    }
    // Fallback to local storage for session restoration
    return _localService.getCurrentUserSync();
  }

  @override
  Future<User?> signInWithGoogle() async {
    final userModel = await _remote.signInWithGoogle();
    final user = userModel?.toDomain();

    // Save user locally after successful sign in
    if (user != null) {
      await _localService.saveUser(user);
    }

    return user;
  }

  @override
  Future<void> signOut() async {
    await _remote.signOut();
    // Clear local user data on sign out
    await _localService.clearUser();
  }

  /// Load user from local storage (for session restoration)
  Future<User?> loadUserFromLocal() async {
    return await _localService.loadUser();
  }
}

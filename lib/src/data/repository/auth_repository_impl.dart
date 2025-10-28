import 'package:artemis_app/src/data/datasource/remote/firebase_auth_service.dart';
import 'package:artemis_app/src/domain/contracts/auth_repository.dart';
import 'package:artemis_app/src/domain/entity/user.dart';

class AuthRepositoryImpl implements IAuthRepository {
  final FirebaseAuthService _remote;

  AuthRepositoryImpl(this._remote);

  @override
  Stream<User?> authStateChanges() =>
      _remote.authState().map((m) => m?.toDomain());

  @override
  User? get currentUser => _remote.current()?.toDomain();

  @override
  Future<User?> signInWithGoogle() async {
    final m = await _remote.signInWithGoogle();
    final user = m?.toDomain();
    return user;
  }

  @override
  Future<void> signOut() async {
    await _remote.signOut();
  }
}
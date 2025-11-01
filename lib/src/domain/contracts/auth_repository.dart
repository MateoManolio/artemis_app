import 'package:artemis_app/src/domain/entity/user.dart';

abstract class IAuthRepository {

  Stream<User?> authStateChanges();
  User? get currentUser;
  Future<User?> signInWithGoogle();
  Future<void> signOut();
}

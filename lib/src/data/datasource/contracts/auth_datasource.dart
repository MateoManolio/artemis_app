import 'package:artemis_app/src/data/models/user_model.dart';

abstract class IAuthDatasource {
  Future<UserModel?> signInWithGoogle();
  Stream<UserModel?> authState();
  Future<void> signOut();
  UserModel? current();
}

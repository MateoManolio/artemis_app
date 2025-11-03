import 'package:artemis_app/src/domain/entity/user.dart';

abstract class IUserLocalServiceDatasource {
  Future<void> saveUser(User user);
  Future<User?> loadUser();
  Future<void> clearUser();
  User? getCurrentUserSync();
}

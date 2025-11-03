import 'package:artemis_app/src/data/datasource/contracts/user_local_service_datasource.dart';
import 'package:artemis_app/src/data/models/db/user_db_model.dart';
import 'package:artemis_app/src/domain/entity/user.dart';
import 'package:isar_community/isar.dart';

/// Service for local user data persistence
class UserLocalService implements IUserLocalServiceDatasource {
  final Isar _isar;

  UserLocalService(this._isar);

  /// Save user data locally
  @override
  Future<void> saveUser(User user) async {
    final userDbModel = UserDbModel.fromDomain(user);
    await _isar.writeTxn(() async {
      // Delete existing user if any (userId is unique)
      await _isar.userDbModels.deleteByUserId(user.uid);
      // Save new user
      await _isar.userDbModels.put(userDbModel);
    });
  }

  /// Load user data from local storage
  @override
  Future<User?> loadUser() async {
    final userDbModel = await _isar.userDbModels.where().findFirst();

    if (userDbModel == null) return null;

    return userDbModel.toDomain();
  }

  /// Clear user data from local storage
  @override
  Future<void> clearUser() async {
    await _isar.writeTxn(() async {
      await _isar.userDbModels.clear();
    });
  }

  /// Get current user if exists (synchronous)
  @override
  User? getCurrentUserSync() {
    final userDbModel = _isar.userDbModels.where().findFirstSync();

    return userDbModel?.toDomain();
  }
}

import 'package:artemis_app/src/data/models/db/user_db_model.dart';
import 'package:artemis_app/src/domain/entity/user.dart';
import 'package:isar_community/isar.dart';

/// Service for local user data persistence
class UserLocalService {
  final Isar _isar;

  UserLocalService(this._isar);

  /// Save user data locally
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
  Future<User?> loadUser() async {
    final userDbModel = await _isar.userDbModels.where().findFirst();

    if (userDbModel == null) return null;

    return userDbModel.toDomain();
  }

  /// Clear user data from local storage
  Future<void> clearUser() async {
    await _isar.writeTxn(() async {
      await _isar.userDbModels.clear();
    });
  }

  /// Get current user if exists (synchronous)
  User? getCurrentUserSync() {
    final userDbModel = _isar.userDbModels.where().findFirstSync();

    return userDbModel?.toDomain();
  }
}

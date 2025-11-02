import 'package:isar_community/isar.dart';
import 'package:artemis_app/src/domain/entity/user.dart';

part 'user_db_model.g.dart';

@Collection()
class UserDbModel {
  Id id = Isar.autoIncrement;

  @Index(unique: true)
  late String userId;

  String? displayName;

  String? email;

  String? photoUrl;

  UserDbModel();

  /// Converts domain User to UserDbModel
  factory UserDbModel.fromDomain(User user) {
    return UserDbModel()
      ..userId = user.uid
      ..displayName = user.displayName
      ..email = user.email
      ..photoUrl = user.photoUrl;
  }

  /// Converts UserDbModel to domain User
  User toDomain() {
    return User(
      uid: userId,
      displayName: displayName,
      email: email,
      photoUrl: photoUrl,
    );
  }
}

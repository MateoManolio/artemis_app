import 'package:artemis_app/src/domain/entity/user.dart';

class UserModel {
  final String uid;
  final String? email;
  final String? displayName;
  final String? photoUrl;

  const UserModel({
    required this.uid,
    this.email,
    this.displayName,
    this.photoUrl,
  });

  factory UserModel.fromFirebaseUser(dynamic fUser) => UserModel(
    uid: fUser.uid,
    email: fUser.email,
    displayName: fUser.displayName,
    photoUrl: fUser.photoURL,
  );

  User toDomain() => User(
    uid: uid,
    email: email,
    displayName: displayName,
    photoUrl: photoUrl,
  );

  Map<String, dynamic> toMap() => {
    'uid': uid,
    'email': email,
    'displayName': displayName,
    'photoUrl': photoUrl,
  };

  factory UserModel.fromMap(Map<String, dynamic> map) => UserModel(
    uid: map['uid'] as String,
    email: map['email'] as String?,
    displayName: map['displayName'] as String?,
    photoUrl: map['photoUrl'] as String?,
  );
}

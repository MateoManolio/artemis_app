class User {
  final String uid;
  final String? email;
  final String? displayName;
  final String? photoUrl;

  const User({required this.uid, this.email, this.displayName, this.photoUrl,});

  factory User.guest() {
    return const User(uid: 'guest', displayName: 'Guest', photoUrl: null, email: null,);
  }
}

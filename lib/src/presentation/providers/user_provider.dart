import 'package:artemis_app/src/config/di/providers.dart';
import 'package:artemis_app/src/domain/entity/user.dart';
import 'package:artemis_app/src/domain/usecase/sign_out_usecase.dart';
import 'package:artemis_app/src/presentation/pages/login/providers/login_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier {
  late final SignOutUsecase _signOutUsecase;

  @override
  User? build() {
    final loginProvider = ref.read(loginProviderProvider);
    _signOutUsecase = ref.read(signOutUsecaseProvider);

    ref.listen(loginProviderProvider, (prev, next) {
      if (!ref.mounted) return;
      state = next;
    });

    return loginProvider;
  }

  Future<void> signOut() async {
    await _signOutUsecase();
    state = User.guest();
  }

  void deleteUser() {
    state = null;
  }

  bool get isAuthenticated => state != null;
  bool get isGuest => state?.uid == User.guest().uid;
  String get displayName => state?.displayName ?? state?.email ?? 'Guest';
  String? get photoUrl => state?.photoUrl;
}

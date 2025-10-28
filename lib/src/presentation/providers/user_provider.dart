import 'package:artemis_app/src/config/di/providers.dart';
import 'package:artemis_app/src/domain/entity/user.dart';
import 'package:artemis_app/src/domain/usecase/sig_out_usecase.dart';
import 'package:artemis_app/src/presentation/pages/login/providers/login_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_provider.g.dart';

@Riverpod(keepAlive: true)
class UserNotifier extends _$UserNotifier {
  
  late final SignOutUsecase _signOutUsecase;

  @override
  Future<User?> build() async {
    final loginProvider = ref.read(loginProviderProvider);
    _signOutUsecase    = ref.read(signOutUsecaseProvider);

    ref.listen(loginProviderProvider, (prev, next) {
      if (!ref.mounted) return;
      state = AsyncValue.data(next);
    });

    return loginProvider;
  }

  Future<void> signOut() async {
    state = const AsyncValue.loading();
    await _signOutUsecase();
    state = const AsyncValue.data(null);
  }

  
  bool get isAuthenticated => state.asData?.value != null;
  bool get isGuest         => state.asData?.value?.uid == User.guest().uid;
  String get displayName   => state.asData?.value?.displayName 
                             ?? state.asData?.value?.email 
                             ?? 'Guest';
  String? get photoUrl     => state.asData?.value?.photoUrl;
}

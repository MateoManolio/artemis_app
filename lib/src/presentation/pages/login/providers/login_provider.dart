import 'package:artemis_app/src/config/di/providers.dart';
import 'package:artemis_app/src/domain/contracts/auth_repository.dart';
import 'package:artemis_app/src/domain/entity/user.dart';
import 'package:artemis_app/src/domain/usecase/observe_auth_state_usecase.dart';
import 'package:artemis_app/src/domain/usecase/sign_in_with_google_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'login_provider.g.dart';

@Riverpod(keepAlive: true)
class LoginProvider extends _$LoginProvider {

  late final SignInWithGoogleUsecase _signInWithGoogleUsecase;
  late final ObserveAuthStateUsecase _observeAuthState;
  late final IAuthRepository _authRepository;


  @override
  User? build() {
    _signInWithGoogleUsecase = ref.read(signInWithGoogleUsecaseProvider);
    _observeAuthState = ref.read(observeAuthStateUsecaseProvider);
    _authRepository = ref.read(authRepositoryProvider);

    final sub = _observeAuthState().listen((user) {
      if (!ref.mounted) return;
      state = user;
    });
    ref.onDispose(sub.cancel);

    final currentUser = _authRepository.currentUser;

    return currentUser;
  }

  Future<void> signInWithGoogle() async {
    final user = await _signInWithGoogleUsecase();
    if (user != null && ref.mounted) {
      state = user;
    }
  }

  Future<void> signInAsGuest() async {
    if (ref.mounted) {
      state = User.guest();
    }
  }
}
import 'package:artemis_app/src/data/datasource/remote/firebase_auth_service.dart';
import 'package:artemis_app/src/data/repository/auth_repository_impl.dart';
import 'package:artemis_app/src/domain/contracts/auth_repository.dart';
import 'package:artemis_app/src/domain/usecase/observe_auth_state_usecase.dart';
import 'package:artemis_app/src/domain/usecase/sig_out_usecase.dart';
import 'package:artemis_app/src/domain/usecase/sign_in_with_google_usecase.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'providers.g.dart';

@Riverpod(keepAlive: true)
FirebaseAuthService firebaseAuthService(Ref ref) => FirebaseAuthService(
  auth: firebase_auth.FirebaseAuth.instance,
  google: GoogleSignIn(scopes: const ['email']),
);

@Riverpod(keepAlive: true)
IAuthRepository authRepository(Ref ref) =>
    AuthRepositoryImpl(ref.watch(firebaseAuthServiceProvider));

@riverpod
SignInWithGoogleUsecase signInWithGoogleUsecase(Ref ref) =>
    SignInWithGoogleUsecase(ref.watch(authRepositoryProvider));

@riverpod
SignOutUsecase signOutUsecase(Ref ref) =>
    SignOutUsecase(ref.watch(authRepositoryProvider));

@riverpod
ObserveAuthStateUsecase observeAuthStateUsecase(Ref ref) =>
    ObserveAuthStateUsecase(ref.watch(authRepositoryProvider));
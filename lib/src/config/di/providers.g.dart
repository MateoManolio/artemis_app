// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(firebaseAuthService)
const firebaseAuthServiceProvider = FirebaseAuthServiceProvider._();

final class FirebaseAuthServiceProvider extends $FunctionalProvider<
    FirebaseAuthService,
    FirebaseAuthService,
    FirebaseAuthService> with $Provider<FirebaseAuthService> {
  const FirebaseAuthServiceProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'firebaseAuthServiceProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$firebaseAuthServiceHash();

  @$internal
  @override
  $ProviderElement<FirebaseAuthService> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  FirebaseAuthService create(Ref ref) {
    return firebaseAuthService(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FirebaseAuthService value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FirebaseAuthService>(value),
    );
  }
}

String _$firebaseAuthServiceHash() =>
    r'53697a1eb2369c21dd783e8c90a64af2f9c6ef5d';

@ProviderFor(authRepository)
const authRepositoryProvider = AuthRepositoryProvider._();

final class AuthRepositoryProvider extends $FunctionalProvider<IAuthRepository,
    IAuthRepository, IAuthRepository> with $Provider<IAuthRepository> {
  const AuthRepositoryProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'authRepositoryProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$authRepositoryHash();

  @$internal
  @override
  $ProviderElement<IAuthRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  IAuthRepository create(Ref ref) {
    return authRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IAuthRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IAuthRepository>(value),
    );
  }
}

String _$authRepositoryHash() => r'67d02216f032c5d49cf91a1c46b9f6935db303d9';

@ProviderFor(signInWithGoogleUsecase)
const signInWithGoogleUsecaseProvider = SignInWithGoogleUsecaseProvider._();

final class SignInWithGoogleUsecaseProvider extends $FunctionalProvider<
    SignInWithGoogleUsecase,
    SignInWithGoogleUsecase,
    SignInWithGoogleUsecase> with $Provider<SignInWithGoogleUsecase> {
  const SignInWithGoogleUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'signInWithGoogleUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$signInWithGoogleUsecaseHash();

  @$internal
  @override
  $ProviderElement<SignInWithGoogleUsecase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SignInWithGoogleUsecase create(Ref ref) {
    return signInWithGoogleUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignInWithGoogleUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignInWithGoogleUsecase>(value),
    );
  }
}

String _$signInWithGoogleUsecaseHash() =>
    r'bddbe81956429f812a088e26f92fe677c60d5bc9';

@ProviderFor(signOutUsecase)
const signOutUsecaseProvider = SignOutUsecaseProvider._();

final class SignOutUsecaseProvider
    extends $FunctionalProvider<SignOutUsecase, SignOutUsecase, SignOutUsecase>
    with $Provider<SignOutUsecase> {
  const SignOutUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'signOutUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$signOutUsecaseHash();

  @$internal
  @override
  $ProviderElement<SignOutUsecase> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  SignOutUsecase create(Ref ref) {
    return signOutUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(SignOutUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<SignOutUsecase>(value),
    );
  }
}

String _$signOutUsecaseHash() => r'1213ff80e9fd80026cb56655077a1d057507435a';

@ProviderFor(observeAuthStateUsecase)
const observeAuthStateUsecaseProvider = ObserveAuthStateUsecaseProvider._();

final class ObserveAuthStateUsecaseProvider extends $FunctionalProvider<
    ObserveAuthStateUsecase,
    ObserveAuthStateUsecase,
    ObserveAuthStateUsecase> with $Provider<ObserveAuthStateUsecase> {
  const ObserveAuthStateUsecaseProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'observeAuthStateUsecaseProvider',
          isAutoDispose: true,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$observeAuthStateUsecaseHash();

  @$internal
  @override
  $ProviderElement<ObserveAuthStateUsecase> $createElement(
          $ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ObserveAuthStateUsecase create(Ref ref) {
    return observeAuthStateUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ObserveAuthStateUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ObserveAuthStateUsecase>(value),
    );
  }
}

String _$observeAuthStateUsecaseHash() =>
    r'3e123590a03bcde095a43c37d65a227e7a681281';

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(openAlexDioClient)
const openAlexDioClientProvider = OpenAlexDioClientProvider._();

final class OpenAlexDioClientProvider
    extends $FunctionalProvider<DioClient, DioClient, DioClient>
    with $Provider<DioClient> {
  const OpenAlexDioClientProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'openAlexDioClientProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$openAlexDioClientHash();

  @$internal
  @override
  $ProviderElement<DioClient> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  DioClient create(Ref ref) {
    return openAlexDioClient(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(DioClient value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<DioClient>(value),
    );
  }
}

String _$openAlexDioClientHash() => r'831adc8597a7167001cfd975fb9fb9db05b5317b';

@ProviderFor(firebaseAuthService)
const firebaseAuthServiceProvider = FirebaseAuthServiceProvider._();

final class FirebaseAuthServiceProvider
    extends
        $FunctionalProvider<
          FirebaseAuthService,
          FirebaseAuthService,
          FirebaseAuthService
        >
    with $Provider<FirebaseAuthService> {
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
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

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

final class AuthRepositoryProvider
    extends
        $FunctionalProvider<IAuthRepository, IAuthRepository, IAuthRepository>
    with $Provider<IAuthRepository> {
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

final class SignInWithGoogleUsecaseProvider
    extends
        $FunctionalProvider<
          SignInWithGoogleUsecase,
          SignInWithGoogleUsecase,
          SignInWithGoogleUsecase
        >
    with $Provider<SignInWithGoogleUsecase> {
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
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

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

final class ObserveAuthStateUsecaseProvider
    extends
        $FunctionalProvider<
          ObserveAuthStateUsecase,
          ObserveAuthStateUsecase,
          ObserveAuthStateUsecase
        >
    with $Provider<ObserveAuthStateUsecase> {
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
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

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

@ProviderFor(getArticlesUsecase)
const getArticlesUsecaseProvider = GetArticlesUsecaseProvider._();

final class GetArticlesUsecaseProvider
    extends
        $FunctionalProvider<
          GetArticlesUsecase,
          GetArticlesUsecase,
          GetArticlesUsecase
        >
    with $Provider<GetArticlesUsecase> {
  const GetArticlesUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getArticlesUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getArticlesUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetArticlesUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetArticlesUsecase create(Ref ref) {
    return getArticlesUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetArticlesUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetArticlesUsecase>(value),
    );
  }
}

String _$getArticlesUsecaseHash() =>
    r'67acd12f4015b20285a5216e7062b237facf8680';

@ProviderFor(getArticlesDetailsUsecase)
const getArticlesDetailsUsecaseProvider = GetArticlesDetailsUsecaseProvider._();

final class GetArticlesDetailsUsecaseProvider
    extends
        $FunctionalProvider<
          GetArticlesDetailsUsecase,
          GetArticlesDetailsUsecase,
          GetArticlesDetailsUsecase
        >
    with $Provider<GetArticlesDetailsUsecase> {
  const GetArticlesDetailsUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getArticlesDetailsUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getArticlesDetailsUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetArticlesDetailsUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetArticlesDetailsUsecase create(Ref ref) {
    return getArticlesDetailsUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetArticlesDetailsUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetArticlesDetailsUsecase>(value),
    );
  }
}

String _$getArticlesDetailsUsecaseHash() =>
    r'27d7213e13c27d938909336a51f2a47471dabd67';

@ProviderFor(getAutocompleteArticlesUsecase)
const getAutocompleteArticlesUsecaseProvider =
    GetAutocompleteArticlesUsecaseProvider._();

final class GetAutocompleteArticlesUsecaseProvider
    extends
        $FunctionalProvider<
          GetAutocompletedArticlesUsecase,
          GetAutocompletedArticlesUsecase,
          GetAutocompletedArticlesUsecase
        >
    with $Provider<GetAutocompletedArticlesUsecase> {
  const GetAutocompleteArticlesUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAutocompleteArticlesUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAutocompleteArticlesUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetAutocompletedArticlesUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAutocompletedArticlesUsecase create(Ref ref) {
    return getAutocompleteArticlesUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAutocompletedArticlesUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAutocompletedArticlesUsecase>(
        value,
      ),
    );
  }
}

String _$getAutocompleteArticlesUsecaseHash() =>
    r'33d9bc5573471ebd1093e50cd0533894420914e6';

@ProviderFor(getRandomArticleUsecase)
const getRandomArticleUsecaseProvider = GetRandomArticleUsecaseProvider._();

final class GetRandomArticleUsecaseProvider
    extends
        $FunctionalProvider<
          GetRandomArticleUsecase,
          GetRandomArticleUsecase,
          GetRandomArticleUsecase
        >
    with $Provider<GetRandomArticleUsecase> {
  const GetRandomArticleUsecaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getRandomArticleUsecaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getRandomArticleUsecaseHash();

  @$internal
  @override
  $ProviderElement<GetRandomArticleUsecase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetRandomArticleUsecase create(Ref ref) {
    return getRandomArticleUsecase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetRandomArticleUsecase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetRandomArticleUsecase>(value),
    );
  }
}

String _$getRandomArticleUsecaseHash() =>
    r'c53d7da14ef2bfcbc7f3b512515fb88ca11b9d55';

@ProviderFor(articleApiDatasource)
const articleApiDatasourceProvider = ArticleApiDatasourceProvider._();

final class ArticleApiDatasourceProvider
    extends
        $FunctionalProvider<
          IArticleApiDatasource,
          IArticleApiDatasource,
          IArticleApiDatasource
        >
    with $Provider<IArticleApiDatasource> {
  const ArticleApiDatasourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articleApiDatasourceProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$articleApiDatasourceHash();

  @$internal
  @override
  $ProviderElement<IArticleApiDatasource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IArticleApiDatasource create(Ref ref) {
    return articleApiDatasource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IArticleApiDatasource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IArticleApiDatasource>(value),
    );
  }
}

String _$articleApiDatasourceHash() =>
    r'2cc25012f50786f495ab01abdcf0bde1fbe8bf7d';

@ProviderFor(articleRepository)
const articleRepositoryProvider = ArticleRepositoryProvider._();

final class ArticleRepositoryProvider
    extends
        $FunctionalProvider<
          IArticleRepository,
          IArticleRepository,
          IArticleRepository
        >
    with $Provider<IArticleRepository> {
  const ArticleRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articleRepositoryProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$articleRepositoryHash();

  @$internal
  @override
  $ProviderElement<IArticleRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  IArticleRepository create(Ref ref) {
    return articleRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(IArticleRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<IArticleRepository>(value),
    );
  }
}

String _$articleRepositoryHash() => r'ded0f76ca2d7aaa2da155408082b49852fd4c103';

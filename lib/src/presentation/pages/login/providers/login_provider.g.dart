// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(LoginProvider)
const loginProviderProvider = LoginProviderProvider._();

final class LoginProviderProvider
    extends $NotifierProvider<LoginProvider, User?> {
  const LoginProviderProvider._()
      : super(
          from: null,
          argument: null,
          retry: null,
          name: r'loginProviderProvider',
          isAutoDispose: false,
          dependencies: null,
          $allTransitiveDependencies: null,
        );

  @override
  String debugGetCreateSourceHash() => _$loginProviderHash();

  @$internal
  @override
  LoginProvider create() => LoginProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(User? value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<User?>(value),
    );
  }
}

String _$loginProviderHash() => r'd3cd8ff0fab2cb1c75e449bce9d1ea855c6aa144';

abstract class _$LoginProvider extends $Notifier<User?> {
  User? build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<User?, User?>;
    final element = ref.element as $ClassProviderElement<
        AnyNotifier<User?, User?>, User?, Object?, Object?>;
    element.handleValue(ref, created);
  }
}

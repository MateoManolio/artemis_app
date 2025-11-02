// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_theme.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(lightThemeProvider)
const lightThemeProviderProvider = LightThemeProviderProvider._();

final class LightThemeProviderProvider
    extends $FunctionalProvider<ThemeData, ThemeData, ThemeData>
    with $Provider<ThemeData> {
  const LightThemeProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'lightThemeProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$lightThemeProviderHash();

  @$internal
  @override
  $ProviderElement<ThemeData> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ThemeData create(Ref ref) {
    return lightThemeProvider(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeData>(value),
    );
  }
}

String _$lightThemeProviderHash() =>
    r'6c66d31b5806ae9948e26fe26ab82ba7eb05828b';

@ProviderFor(darkThemeProvider)
const darkThemeProviderProvider = DarkThemeProviderProvider._();

final class DarkThemeProviderProvider
    extends $FunctionalProvider<ThemeData, ThemeData, ThemeData>
    with $Provider<ThemeData> {
  const DarkThemeProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'darkThemeProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$darkThemeProviderHash();

  @$internal
  @override
  $ProviderElement<ThemeData> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  ThemeData create(Ref ref) {
    return darkThemeProvider(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ThemeData value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ThemeData>(value),
    );
  }
}

String _$darkThemeProviderHash() => r'5e02ffc012bb08244c23f66623916473469d3873';

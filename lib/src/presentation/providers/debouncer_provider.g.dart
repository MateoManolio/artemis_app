// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'debouncer_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(Debouncer)
const debouncerProvider = DebouncerProvider._();

final class DebouncerProvider extends $NotifierProvider<Debouncer, void> {
  const DebouncerProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'debouncerProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$debouncerHash();

  @$internal
  @override
  Debouncer create() => Debouncer();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(void value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<void>(value),
    );
  }
}

String _$debouncerHash() => r'afa08373b32829a031e342d3d1f55c3158336015';

abstract class _$Debouncer extends $Notifier<void> {
  void build();
  @$mustCallSuper
  @override
  void runBuild() {
    build();
    final ref = this.ref as $Ref<void, void>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<void, void>,
              void,
              Object?,
              Object?
            >;
    element.handleValue(ref, null);
  }
}

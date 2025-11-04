// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'font_size_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(FontSizeNotifier)
const fontSizeProvider = FontSizeNotifierProvider._();

final class FontSizeNotifierProvider
    extends $NotifierProvider<FontSizeNotifier, FontSize> {
  const FontSizeNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'fontSizeProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$fontSizeNotifierHash();

  @$internal
  @override
  FontSizeNotifier create() => FontSizeNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(FontSize value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<FontSize>(value),
    );
  }
}

String _$fontSizeNotifierHash() => r'349997214415ea86a323f8159556800dbf54e2ed';

abstract class _$FontSizeNotifier extends $Notifier<FontSize> {
  FontSize build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<FontSize, FontSize>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<FontSize, FontSize>,
              FontSize,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

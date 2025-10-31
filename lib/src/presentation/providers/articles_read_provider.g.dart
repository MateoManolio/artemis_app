// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_read_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ArticlesReadProvider)
const articlesReadProviderProvider = ArticlesReadProviderProvider._();

final class ArticlesReadProviderProvider
    extends $NotifierProvider<ArticlesReadProvider, int> {
  const ArticlesReadProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articlesReadProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$articlesReadProviderHash();

  @$internal
  @override
  ArticlesReadProvider create() => ArticlesReadProvider();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$articlesReadProviderHash() =>
    r'c84377ece1169a2172a6f283e3c7e5f195571875';

abstract class _$ArticlesReadProvider extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

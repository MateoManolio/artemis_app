// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_cache_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ArticleCache)
const articleCacheProvider = ArticleCacheProvider._();

final class ArticleCacheProvider
    extends $NotifierProvider<ArticleCache, CacheState> {
  const ArticleCacheProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articleCacheProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$articleCacheHash();

  @$internal
  @override
  ArticleCache create() => ArticleCache();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CacheState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CacheState>(value),
    );
  }
}

String _$articleCacheHash() => r'14ceaee35c43da3d0b82621c04413cf67bbe3860';

abstract class _$ArticleCache extends $Notifier<CacheState> {
  CacheState build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<CacheState, CacheState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CacheState, CacheState>,
              CacheState,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

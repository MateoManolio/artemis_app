// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'articles_data_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ArticlesData)
const articlesDataProvider = ArticlesDataProvider._();

final class ArticlesDataProvider
    extends $NotifierProvider<ArticlesData, AsyncValue<List<Article>>> {
  const ArticlesDataProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articlesDataProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$articlesDataHash();

  @$internal
  @override
  ArticlesData create() => ArticlesData();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AsyncValue<List<Article>> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AsyncValue<List<Article>>>(value),
    );
  }
}

String _$articlesDataHash() => r'5a847310f8f7939b5d27054d9bbe3046ffd7b52e';

abstract class _$ArticlesData extends $Notifier<AsyncValue<List<Article>>> {
  AsyncValue<List<Article>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref =
        this.ref as $Ref<AsyncValue<List<Article>>, AsyncValue<List<Article>>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Article>>, AsyncValue<List<Article>>>,
              AsyncValue<List<Article>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

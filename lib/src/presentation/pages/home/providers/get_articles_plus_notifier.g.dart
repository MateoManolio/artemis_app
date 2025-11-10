// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_articles_plus_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GetArticlesPlusNotifier)
const getArticlesPlusProvider = GetArticlesPlusNotifierProvider._();

final class GetArticlesPlusNotifierProvider
    extends $NotifierProvider<GetArticlesPlusNotifier, List<Article>> {
  const GetArticlesPlusNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getArticlesPlusProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getArticlesPlusNotifierHash();

  @$internal
  @override
  GetArticlesPlusNotifier create() => GetArticlesPlusNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(List<Article> value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<List<Article>>(value),
    );
  }
}

String _$getArticlesPlusNotifierHash() =>
    r'340d381c0ccab290aa08e8f59a1d8847015d15a4';

abstract class _$GetArticlesPlusNotifier extends $Notifier<List<Article>> {
  List<Article> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<List<Article>, List<Article>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<List<Article>, List<Article>>,
              List<Article>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

/// Provider to track loading state of API call

@ProviderFor(ArticlesLoadingState)
const articlesLoadingStateProvider = ArticlesLoadingStateProvider._();

/// Provider to track loading state of API call
final class ArticlesLoadingStateProvider
    extends $NotifierProvider<ArticlesLoadingState, bool> {
  /// Provider to track loading state of API call
  const ArticlesLoadingStateProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articlesLoadingStateProvider',
        isAutoDispose: false,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$articlesLoadingStateHash();

  @$internal
  @override
  ArticlesLoadingState create() => ArticlesLoadingState();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(bool value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<bool>(value),
    );
  }
}

String _$articlesLoadingStateHash() =>
    r'eef20faa64e70df3bf007611fbaf9fa5e5eb2750';

/// Provider to track loading state of API call

abstract class _$ArticlesLoadingState extends $Notifier<bool> {
  bool build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<bool, bool>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<bool, bool>,
              bool,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

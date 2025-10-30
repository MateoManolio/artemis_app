// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_random_article_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(GetRandomArticleProvider)
const getRandomArticleProviderProvider = GetRandomArticleProviderProvider._();

final class GetRandomArticleProviderProvider
    extends $AsyncNotifierProvider<GetRandomArticleProvider, Article> {
  const GetRandomArticleProviderProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getRandomArticleProviderProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getRandomArticleProviderHash();

  @$internal
  @override
  GetRandomArticleProvider create() => GetRandomArticleProvider();
}

String _$getRandomArticleProviderHash() =>
    r'a778fbd98c2d872253df7bb3256322870e58f4c5';

abstract class _$GetRandomArticleProvider extends $AsyncNotifier<Article> {
  FutureOr<Article> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<Article>, Article>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<Article>, Article>,
              AsyncValue<Article>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

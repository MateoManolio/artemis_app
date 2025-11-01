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
    r'e3bec102679e410b217876a230730d5e14f76b3e';

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

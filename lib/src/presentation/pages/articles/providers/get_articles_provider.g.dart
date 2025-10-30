// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_articles_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ArticlesNotifier)
const articlesProvider = ArticlesNotifierProvider._();

final class ArticlesNotifierProvider
    extends $AsyncNotifierProvider<ArticlesNotifier, List<Article>> {
  const ArticlesNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'articlesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$articlesNotifierHash();

  @$internal
  @override
  ArticlesNotifier create() => ArticlesNotifier();
}

String _$articlesNotifierHash() => r'ee133b1ccd2f495d5bf18ed5aeb3eb02695b0ad8';

abstract class _$ArticlesNotifier extends $AsyncNotifier<List<Article>> {
  FutureOr<List<Article>> build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<AsyncValue<List<Article>>, List<Article>>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AsyncValue<List<Article>>, List<Article>>,
              AsyncValue<List<Article>>,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

@ProviderFor(getArticlesDetails)
const getArticlesDetailsProvider = GetArticlesDetailsFamily._();

final class GetArticlesDetailsProvider
    extends
        $FunctionalProvider<
          AsyncValue<DataState<Article>>,
          DataState<Article>,
          FutureOr<DataState<Article>>
        >
    with
        $FutureModifier<DataState<Article>>,
        $FutureProvider<DataState<Article>> {
  const GetArticlesDetailsProvider._({
    required GetArticlesDetailsFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getArticlesDetailsProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getArticlesDetailsHash();

  @override
  String toString() {
    return r'getArticlesDetailsProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<DataState<Article>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DataState<Article>> create(Ref ref) {
    final argument = this.argument as String;
    return getArticlesDetails(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetArticlesDetailsProvider && other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getArticlesDetailsHash() =>
    r'627e6320e8e337eb2ebb5033ed7596cc241f6dc6';

final class GetArticlesDetailsFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DataState<Article>>, String> {
  const GetArticlesDetailsFamily._()
    : super(
        retry: null,
        name: r'getArticlesDetailsProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetArticlesDetailsProvider call(String id) =>
      GetArticlesDetailsProvider._(argument: id, from: this);

  @override
  String toString() => r'getArticlesDetailsProvider';
}

@ProviderFor(getAutocompleteArticles)
const getAutocompleteArticlesProvider = GetAutocompleteArticlesFamily._();

final class GetAutocompleteArticlesProvider
    extends
        $FunctionalProvider<
          AsyncValue<DataState<List<Article>>>,
          DataState<List<Article>>,
          FutureOr<DataState<List<Article>>>
        >
    with
        $FutureModifier<DataState<List<Article>>>,
        $FutureProvider<DataState<List<Article>>> {
  const GetAutocompleteArticlesProvider._({
    required GetAutocompleteArticlesFamily super.from,
    required String super.argument,
  }) : super(
         retry: null,
         name: r'getAutocompleteArticlesProvider',
         isAutoDispose: true,
         dependencies: null,
         $allTransitiveDependencies: null,
       );

  @override
  String debugGetCreateSourceHash() => _$getAutocompleteArticlesHash();

  @override
  String toString() {
    return r'getAutocompleteArticlesProvider'
        ''
        '($argument)';
  }

  @$internal
  @override
  $FutureProviderElement<DataState<List<Article>>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<DataState<List<Article>>> create(Ref ref) {
    final argument = this.argument as String;
    return getAutocompleteArticles(ref, argument);
  }

  @override
  bool operator ==(Object other) {
    return other is GetAutocompleteArticlesProvider &&
        other.argument == argument;
  }

  @override
  int get hashCode {
    return argument.hashCode;
  }
}

String _$getAutocompleteArticlesHash() =>
    r'74c4710a88e312a015d8edb64e53ae3548316db9';

final class GetAutocompleteArticlesFamily extends $Family
    with $FunctionalFamilyOverride<FutureOr<DataState<List<Article>>>, String> {
  const GetAutocompleteArticlesFamily._()
    : super(
        retry: null,
        name: r'getAutocompleteArticlesProvider',
        dependencies: null,
        $allTransitiveDependencies: null,
        isAutoDispose: true,
      );

  GetAutocompleteArticlesProvider call(String query) =>
      GetAutocompleteArticlesProvider._(argument: query, from: this);

  @override
  String toString() => r'getAutocompleteArticlesProvider';
}

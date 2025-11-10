import 'package:artemis_app/src/config/di/providers.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/domain/usecase/get_autocomplete_articles_usecase.dart';
import 'package:artemis_app/src/domain/usecase/search_favorites_usecase.dart';
import 'package:artemis_app/src/presentation/providers/articles_filters_provider.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_articles_plus_notifier.g.dart';

@Riverpod(keepAlive: true)
class GetArticlesPlusNotifier extends _$GetArticlesPlusNotifier {
  @override
  List<Article> build() {
    return [];
  }

  void loadInitialArticles(List<Article> initialArticles) {
    state = initialArticles;
  }

  Future<void> getArticlesAndFavorites(
    String query,
    CancelToken cancelToken,
    List<Article> favorites,
  ) async {
    final filters = ref.read(articlesFiltersNotifierProvider);

    // Filter favorites locally
    final searchFavoritesUsecase = ref.read(searchFavoritesUsecaseProvider);
    final filteredFavorites = await searchFavoritesUsecase(
      SearchFavoritesParams(
        favorites: favorites,
        query: query,
        filters: filters,
      ),
    );

    state = filteredFavorites;

    // Set loading state before API call
    ref.read(articlesLoadingStateProvider.notifier).setLoading(true);

    // Get API autocomplete results
    final autocompleteUsecase = ref.read(
      getAutocompleteArticlesUsecaseProvider,
    );
    final apiResult = await autocompleteUsecase(
      GetAutocompleteParams(
        query: query,
        filters: filters,
        cancelToken: cancelToken,
        perPage: 40,
      ),
    );

    ref.read(articlesLoadingStateProvider.notifier).setLoading(false);

    // Merge results
    if (apiResult is DataSuccess<List<Article>>) {
      final mergedResults = _mergeResults(filteredFavorites, apiResult.data!);
      state = mergedResults;
    }
  }

  /// Merges favorites and API results, removing duplicates
  /// Favorites take precedence (appear first)
  List<Article> _mergeResults(
    List<Article> favorites,
    List<Article> apiResults,
  ) {
    final favoriteIds = favorites.map((a) => a.id).toSet();

    final uniqueApiResults = apiResults.where((article) {
      return !favoriteIds.contains(article.id);
    }).toList();

    return [...favorites, ...uniqueApiResults];
  }

  AsyncValue<List<Article>> getFavorites() {
    return const AsyncLoading();
  }
}

/// Provider to track loading state of API call
@Riverpod(keepAlive: true)
class ArticlesLoadingState extends _$ArticlesLoadingState {
  @override
  bool build() {
    return false;
  }

  void setLoading(bool isLoading) {
    state = isLoading;
  }
}

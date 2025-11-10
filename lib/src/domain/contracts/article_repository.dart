import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:dio/dio.dart';
import 'package:artemis_app/src/presentation/providers/articles_filters_provider.dart';

abstract class IArticleRepository {
  /// Gets an article by its ID
  Future<DataState<Article>> getArticle(String id);

  /// Gets a list of articles with optional filters
  Future<DataState<List<Article>>> getArticles({
    String? query,
    int? page,
    int? perPage,
    CancelToken? cancelToken,
    ArticlesFilters? filters,
  });

  /// Gets autocomplete suggestions for articles
  Future<DataState<List<Article>>> getAutocompleteArticles({
    required String query,
    ArticlesFilters? filters,
    CancelToken? cancelToken,
    int? perPage,
  });

  /// Gets a random article
  Future<DataState<Article>> getRandomArticle();
}

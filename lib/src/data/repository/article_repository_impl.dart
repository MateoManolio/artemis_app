import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/data/datasource/contracts/article_api_datasource.dart';
import 'package:artemis_app/src/data/mappers/work_mapper.dart';
import 'package:artemis_app/src/domain/contracts/article_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

class ArticleRepositoryImpl implements IArticleRepository {
  final IArticleApiDatasource service;

  ArticleRepositoryImpl({required this.service});

  @override
  Future<DataState<Article>> getArticle(String id) async {
    try {
      final result = await service.getArticleById(id);

      if (result is DataSuccess<dynamic>) {
        final article = result.data!.toDomain();
        return DataSuccess(data: article);
      } else if (result is DataFailure<dynamic>) {
        return DataFailure(error: result.error!);
      }

      return DataFailure(error: Exception('Unknown error'));
    } catch (e) {
      return DataFailure(error: Exception('Repository error: $e'));
    }
  }

  @override
  Future<DataState<List<Article>>> getArticles({
    String? query,
    int? page,
    int? perPage,
  }) async {
    try {
      final result = await service.getArticles(
        query: query,
        page: page,
        perPage: perPage,
      );

      if (result is DataSuccess) {
        final articles = result.data!.map((work) => work.toDomain()).toList();
        return DataSuccess<List<Article>>(data: articles);
      } else if (result is DataFailure) {
        return DataFailure<List<Article>>(error: result.error!);
      }

      return DataFailure(error: Exception('Unknown error'));
    } catch (e) {
      return DataFailure(error: Exception('Repository error: $e'));
    }
  }

  @override
  Future<DataState<List<Article>>> getAutocompleteArticles(String query) async {
    try {
      final result = await service.getAutocompleteArticle(query);

      if (result is DataSuccess) {
        final articles = result.data!.map((work) => work.toDomain()).toList();
        return DataSuccess<List<Article>>(data: articles);
      } else if (result is DataFailure) {
        return DataFailure<List<Article>>(error: result.error!);
      }

      return DataFailure(error: Exception('Unknown error'));
    } catch (e) {
      return DataFailure(error: Exception('Repository error: $e'));
    }
  }
}

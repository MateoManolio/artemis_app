import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/contracts/article_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:dio/dio.dart';
import 'package:artemis_app/src/presentation/providers/articles_filters_provider.dart';

class GetArticlesUsecase
    implements IUseCaseQuery<DataState<List<Article>>, GetArticlesParams> {
  final IArticleRepository _repository;

  GetArticlesUsecase(this._repository);

  @override
  Future<DataState<List<Article>>> call(GetArticlesParams params) async {
    return await _repository.getArticles(
      query: params.query,
      page: params.page,
      perPage: params.perPage,
      cancelToken: params.cancelToken,
      filters: params.filters,
    );
  }
}

class GetArticlesParams {
  final String? query;
  final int? page;
  final int? perPage;
  final CancelToken? cancelToken;
  final ArticlesFilters? filters;

  GetArticlesParams({
    this.query,
    this.page,
    this.perPage,
    this.cancelToken,
    this.filters,
  });
}

import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/contracts/article_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/presentation/providers/articles_filters_provider.dart';
import 'package:dio/dio.dart';

class GetAutocompletedArticlesUsecase
    implements IUseCaseQuery<DataState<List<Article>>, GetAutocompleteParams> {
  final IArticleRepository _repository;

  GetAutocompletedArticlesUsecase(this._repository);

  @override
  Future<DataState<List<Article>>> call(GetAutocompleteParams params) async {
    return await _repository.getAutocompleteArticles(
      query: params.query,
      filters: params.filters,
      cancelToken: params.cancelToken,
      perPage: params.perPage,
    );
  }
}

class GetAutocompleteParams {
  final String query;
  final ArticlesFilters? filters;
  final CancelToken? cancelToken;
  final int? perPage;

  GetAutocompleteParams({
    required this.query,
    this.filters,
    this.cancelToken,
    this.perPage,
  });
}

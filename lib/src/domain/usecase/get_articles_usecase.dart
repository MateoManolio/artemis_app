import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/contracts/article_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

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
    );
  }
}

class GetArticlesParams {
  final String? query;
  final int? page;
  final int? perPage;

  GetArticlesParams({
    this.query,
    this.page,
    this.perPage,
  });
}

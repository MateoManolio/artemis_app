import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/contracts/article_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

class GetArticlesDetailsUsecase implements IUseCaseQuery<DataState<Article>, String> {
  final IArticleRepository _repository;

  GetArticlesDetailsUsecase(this._repository);

  @override
  Future<DataState<Article>> call(String articleId) async {
    return await _repository.getArticle(articleId);
  }
}


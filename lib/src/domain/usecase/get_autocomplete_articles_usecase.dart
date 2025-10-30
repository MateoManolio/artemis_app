import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/contracts/article_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

class GetAutocompletedArticlesUsecase
    implements IUseCaseQuery<DataState<List<Article>>, String> {
  final IArticleRepository _repository;

  GetAutocompletedArticlesUsecase(this._repository);

  @override
  Future<DataState<List<Article>>> call(String query) async {
    return await _repository.getAutocompleteArticles(query);
  }
}

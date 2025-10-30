import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/contracts/article_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

class GetRandomArticleUsecase implements IUseCaseCommand<DataState<Article>> {
  final IArticleRepository repository;

  GetRandomArticleUsecase(this.repository);

  @override
  Future<DataState<Article>> call() async {
    return repository.getRandomArticle();
  }
}

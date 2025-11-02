import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

/// Use case to add an article to favorites
class AddFavoriteUsecase implements IUseCaseQuery<void, Article> {
  final IFavoritesRepository _repository;

  AddFavoriteUsecase(this._repository);

  /// Adds an article to the favorites list
  ///
  /// [article] The article to add to favorites
  @override
  Future<void> call(Article article) async {
    _repository.addFavorite(article);
  }
}

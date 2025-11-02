import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

/// Use case to toggle the favorite status of an article
class ToggleFavoriteUsecase implements IUseCaseQuery<void, Article> {
  final IFavoritesRepository _repository;

  ToggleFavoriteUsecase(this._repository);

  /// Toggles the favorite status of an article
  ///
  /// [article] The article to update
  @override
  Future<void> call(Article article) async {
    if (article.favorite) {
      _repository.addFavorite(article);
    } else {
      _repository.removeFavorite(article.id);
    }
  }
}

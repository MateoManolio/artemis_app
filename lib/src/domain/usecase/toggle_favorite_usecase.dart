import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

/// Use case para cambiar el estado de favorito de un artículo
class ToggleFavoriteUsecase implements IUseCaseQuery<void, Article> {
  final IFavoritesRepository _repository;

  ToggleFavoriteUsecase(this._repository);

  /// Cambia el estado de favorito de un artículo
  ///
  /// [article] El artículo a actualizar
  @override
  Future<void> call(Article article) async {
    if (!article.favorite) {
      _repository.addFavorite(article);
    } else {
      _repository.removeFavorite(article.id);
    }
  }
}

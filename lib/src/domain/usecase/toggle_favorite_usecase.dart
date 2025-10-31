import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';

/// Use case para cambiar el estado de favorito de un artículo
class ToggleFavoriteUsecase implements IUseCaseQuery<void, ToggleFavoriteParams> {
  final IFavoritesRepository _repository;

  ToggleFavoriteUsecase(this._repository);

  /// Cambia el estado de favorito de un artículo
  /// 
  /// [params] Los parámetros que contienen el ID del artículo y el nuevo estado
  @override
  Future<void> call(ToggleFavoriteParams params) async {
    await _repository.toggleFavorite(params.articleId, params.isFavorite);
  }
}

/// Parámetros para el use case de toggle favorite
class ToggleFavoriteParams {
  final String articleId;
  final bool isFavorite;

  ToggleFavoriteParams({
    required this.articleId,
    required this.isFavorite,
  });
}


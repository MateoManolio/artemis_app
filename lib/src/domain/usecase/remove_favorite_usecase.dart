import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:artemis_app/src/core/interfaces/i_usecase.dart';

/// Use case para eliminar un artículo de favoritos
class RemoveFavoriteUsecase implements IUseCaseQuery<void, String> {
  final IFavoritesRepository _repository;

  RemoveFavoriteUsecase(this._repository);

  /// Elimina un artículo de la lista de favoritos
  ///
  /// [articleId] El ID del artículo que se eliminará de favoritos
  @override
  Future<void> call(String articleId) async {
    _repository.removeFavorite(articleId);
  }
}

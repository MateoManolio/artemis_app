import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:artemis_app/src/core/interfaces/i_usecase.dart';

/// Use case to remove an article from favorites
class RemoveFavoriteUsecase implements IUseCaseQuery<void, String> {
  final IFavoritesRepository _repository;

  RemoveFavoriteUsecase(this._repository);

  /// Removes an article from the favorites list
  ///
  /// [articleId] The ID of the article to remove from favorites
  @override
  Future<void> call(String articleId) async {
    _repository.removeFavorite(articleId);
  }
}

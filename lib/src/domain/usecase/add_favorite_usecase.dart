import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

/// Use case para agregar un artículo a favoritos
class AddFavoriteUsecase implements IUseCaseQuery<void, Article> {
  final IFavoritesRepository _repository;

  AddFavoriteUsecase(this._repository);

  /// Agrega un artículo a la lista de favoritos
  ///
  /// [article] El artículo que se agregará a favoritos
  @override
  Future<void> call(Article article) async {
    _repository.addFavorite(article);
  }
}

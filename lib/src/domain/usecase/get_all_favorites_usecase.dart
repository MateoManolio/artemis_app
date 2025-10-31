import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

/// Use case para obtener todos los artículos favoritos
class GetAllFavoritesUsecase implements IUseCaseCommand<List<Article>> {
  final IFavoritesRepository _repository;

  GetAllFavoritesUsecase(this._repository);

  /// Obtiene la lista completa de artículos marcados como favoritos
  /// 
  /// Returns una lista de [Article] favoritos
  @override
  Future<List<Article>> call() async {
    return await _repository.getAllFavorites();
  }
}


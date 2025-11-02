import 'package:artemis_app/src/core/interfaces/i_usecase.dart';
import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

/// Use case to retrieve all favorite articles
class GetAllFavoritesUsecase implements IUseCaseCommand<List<Article>> {
  final IFavoritesRepository _repository;

  GetAllFavoritesUsecase(this._repository);

  /// Gets the complete list of articles marked as favorites
  ///
  /// Returns a list of [Article] favorites
  @override
  Future<List<Article>> call() async {
    return await _repository.getAllFavorites();
  }
}

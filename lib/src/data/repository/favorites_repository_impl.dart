import 'package:artemis_app/src/data/datasource/contracts/db_datasource.dart';
import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

class FavoritesRepositoryImpl implements IFavoritesRepository {
  final DbDataSource dbDataSource;

  FavoritesRepositoryImpl({required this.dbDataSource});

  @override
  void addFavorite(Article article) {
    // TODO: implement addFavorite
  }

  @override
  List<Article> getAllFavorites() {
    // TODO: implement getAllFavorites
    throw UnimplementedError();
  }

  @override
  void removeFavorite(String id) {
    // TODO: implement removeFavorite
  }
}

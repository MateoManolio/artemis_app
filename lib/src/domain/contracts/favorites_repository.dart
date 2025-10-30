import 'package:artemis_app/src/domain/entity/article.dart';

abstract class IFavoritesRepository {
  void addFavorite(Article article);
  void removeFavorite(String id);

  List<Article> getAllFavorites();
}

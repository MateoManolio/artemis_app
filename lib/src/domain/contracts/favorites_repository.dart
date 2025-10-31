import 'package:artemis_app/src/domain/entity/article.dart';

abstract class IFavoritesRepository {
  void addFavorite(Article article);
  void removeFavorite(String id);

  Future<List<Article>> getAllFavorites();

  Future<void> toggleFavorite(String articleId, bool isFavorite);

  Future<void> updateArticle(Article article);
}

import 'package:artemis_app/src/data/models/db/article_db_model.dart';

abstract class DbDataSource {
  Future<void> insertArticle(ArticleDbModel article);
  Future<void> updateArticle(ArticleDbModel article);
  Future<void> deleteArticle(String articleId);
  Future<ArticleDbModel?> getArticleById(String articleId);
  Future<List<ArticleDbModel>> getAllArticles();
  Future<List<ArticleDbModel>> getAllFavorites();
  Future<void> toggleFavorite(String articleId, bool isFavorite);
}

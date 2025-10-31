import 'package:artemis_app/src/data/datasource/contracts/db_datasource.dart';
import 'package:artemis_app/src/data/models/db/article_db_model.dart';
import 'package:isar_community/isar.dart';

class ArticlesDao implements DbDataSource {
  final Isar _isar;

  ArticlesDao(this._isar);

  @override
  Future<void> insertArticle(ArticleDbModel article) async {
    await _isar.writeTxn(() async {
      await _isar.articleDbModels.put(article);
    });
  }

  @override
  Future<void> updateArticle(ArticleDbModel article) async {
    await _isar.writeTxn(() async {
      await _isar.articleDbModels.put(article);
    });
  }

  @override
  Future<void> deleteArticle(String articleId) async {
    await _isar.writeTxn(() async {
      await _isar.articleDbModels
          .filter()
          .articleIdEqualTo(articleId)
          .deleteFirst();
    });
  }

  @override
  Future<ArticleDbModel?> getArticleById(String articleId) async {
    return await _isar.articleDbModels
        .filter()
        .articleIdEqualTo(articleId)
        .findFirst();
  }

  @override
  Future<List<ArticleDbModel>> getAllArticles() async {
    return await _isar.articleDbModels.where().findAll();
  }

  @override
  Future<List<ArticleDbModel>> getAllFavorites() async {
    return await _isar.articleDbModels.filter().favoriteEqualTo(true).findAll();
  }

  @override
  Future<void> toggleFavorite(String articleId, bool isFavorite) async {
    await _isar.writeTxn(() async {
      final article = await getArticleById(articleId);
      if (article != null) {
        article.favorite = isFavorite;
        article.updatedAt = DateTime.now();
        await _isar.articleDbModels.put(article);
      }
    });
  }
}

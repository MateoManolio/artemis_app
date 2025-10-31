import 'package:artemis_app/src/data/datasource/contracts/db_datasource.dart';
import 'package:artemis_app/src/data/models/db/article_db_model.dart';
import 'package:artemis_app/src/domain/contracts/favorites_repository.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

class FavoritesRepositoryImpl implements IFavoritesRepository {
  final DbDataSource dbDataSource;

  FavoritesRepositoryImpl({required this.dbDataSource});

  @override
  void addFavorite(Article article) {
    dbDataSource.insertArticle(ArticleDbModel.fromDomain(article));
  }

  @override
  Future<List<Article>> getAllFavorites() async {
    final articles = await dbDataSource.getAllFavorites();
    return articles.map((e) => e.toDomain()).toList();
  }

  @override
  void removeFavorite(String id) {
    dbDataSource.deleteArticle(id);
  }

  @override
  Future<void> toggleFavorite(String articleId, bool isFavorite) async {
    await dbDataSource.toggleFavorite(articleId, isFavorite);
  }
}

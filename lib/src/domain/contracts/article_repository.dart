import 'package:artemis_app/src/domain/entity/article.dart';

abstract class IArticleRepository{
  Future<Article> getArticle(String id);
  Future<List<Article>> getArticleBy();
}
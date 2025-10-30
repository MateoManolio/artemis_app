import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/entity/article.dart';

abstract class IArticleRepository {
  /// Obtiene un artículo por su ID
  Future<DataState<Article>> getArticle(String id);
  
  /// Obtiene una lista de artículos con filtros opcionales
  Future<DataState<List<Article>>> getArticles({
    String? query,
    int? page,
    int? perPage,
  });
  
  /// Obtiene sugerencias de artículos para autocompletado
  Future<DataState<List<Article>>> getAutocompleteArticles(String query);
}
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/data/models/dtos/work_dto.dart';

abstract class IArticleApiDatasource {
  Future<DataState<WorkDto>> getArticleById(String id);
  Future<DataState<List<WorkDto>>> getArticles({
    String? query,
    int? page,
    int? perPage,
  });

  Future<DataState<List<WorkDto>>> getAutocompleteArticle(String query);
}

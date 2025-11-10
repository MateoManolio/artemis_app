import 'package:artemis_app/src/core/network/dio_client.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/data/datasource/contracts/article_api_datasource.dart';
import 'package:artemis_app/src/data/mappers/openalex_filters_mapper.dart';
import 'package:artemis_app/src/data/models/dtos/work_dto.dart';
import 'package:artemis_app/src/data/models/dtos/openalex_response_dto.dart';
import 'package:dio/dio.dart';
import 'package:artemis_app/src/presentation/providers/articles_filters_provider.dart';

class OpenalexApiService implements IArticleApiDatasource {
  final DioClient _client;

  OpenalexApiService({required DioClient client}) : _client = client;

  @override
  Future<DataState<WorkDto>> getArticleById(String id) async {
    try {
      // Clean the ID in case it comes with the full OpenAlex prefix
      final cleanId = _cleanOpenAlexId(id);

      final response = await _client.get('/works/$cleanId');

      if (response.statusCode == 200 && response.data != null) {
        final article = WorkDto.fromJson(response.data);
        return DataSuccess(data: article);
      } else {
        return DataFailure(
          error: Exception(
            'Failed to load article: Status ${response.statusCode}',
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(error: _handleDioError(e));
    } catch (e) {
      return DataFailure(error: Exception('Unexpected error: $e'));
    }
  }

  @override
  Future<DataState<List<WorkDto>>> getArticles({
    String? query,
    int? page,
    int? perPage,
    CancelToken? cancelToken,
    ArticlesFilters? filters,
  }) async {
    try {
      final queryParameters = <String, dynamic>{};

      // Build the search filter
      if (query != null && query.isNotEmpty) {
        queryParameters['search'] = query;
      }

      // Pagination
      queryParameters['page'] = page ?? 1;
      queryParameters['per-page'] = perPage ?? 25;

      // Typed filters
      if (filters != null) {
        queryParameters.addAll(
          OpenAlexFiltersMapper.toQueryParameters(filters),
        );
      }

      // Sort by relevance or publication date if not defined in the filter
      queryParameters['sort'] =
          queryParameters['sort'] ??
          ((query != null && query.isNotEmpty)
              ? 'relevance_score:desc'
              : 'publication_date:desc');

      final response = await _client.get(
        '/works',
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      );

      if (response.statusCode == 200 && response.data != null) {
        final openAlexResponse = OpenAlexResponse<WorkDto>.fromJson(
          response.data,
          (json) => WorkDto.fromJson(json as Map<String, dynamic>),
        );

        return DataSuccess(data: openAlexResponse.results);
      } else {
        return DataFailure(
          error: Exception(
            'Failed to load articles: Status ${response.statusCode}',
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(error: _handleDioError(e));
    } catch (e) {
      return DataFailure(error: Exception('Unexpected error: $e'));
    }
  }

  @override
  Future<DataState<List<WorkDto>>> getAutocompleteArticle({
    required String query,
    ArticlesFilters? filters,
    CancelToken? cancelToken,
    int? perPage,
  }) async {
    try {
      if (query.isEmpty) {
        return DataSuccess(data: []);
      }

      final queryParameters = <String, dynamic>{
        'search': query,
        'per-page': perPage ?? 10, // Default to 10, customizable
        'sort': 'relevance_score:desc',
      };

      // Apply filters if provided
      if (filters != null) {
        queryParameters.addAll(
          OpenAlexFiltersMapper.toQueryParameters(filters),
        );
      }

      final response = await _client.get(
        '/works',
        queryParameters: queryParameters,
        cancelToken: cancelToken,
      );

      if (response.statusCode == 200 && response.data != null) {
        final openAlexResponse = OpenAlexResponse<WorkDto>.fromJson(
          response.data,
          (json) => WorkDto.fromJson(json as Map<String, dynamic>),
        );

        return DataSuccess(data: openAlexResponse.results);
      } else {
        return DataFailure(
          error: Exception(
            'Failed to autocomplete: Status ${response.statusCode}',
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(error: _handleDioError(e));
    } catch (e) {
      return DataFailure(error: Exception('Unexpected error: $e'));
    }
  }

  @override
  Future<DataState<WorkDto>> getRandomArticle() async {
    try {
      final response = await _client.get('/works/random');
      if (response.statusCode == 200 && response.data != null) {
        final article = WorkDto.fromJson(response.data);
        return DataSuccess(data: article);
      } else {
        return DataFailure(
          error: Exception(
            'Failed to load random article: Status ${response.statusCode}',
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(error: _handleDioError(e));
    } catch (e) {
      return DataFailure(error: Exception('Unexpected error: $e'));
    }
  }

  /// Search articles by author
  Future<DataState<List<WorkDto>>> getArticlesByAuthor({
    required String authorId,
    int? page,
    int? perPage,
  }) async {
    try {
      final cleanAuthorId = _cleanOpenAlexId(authorId);

      final queryParameters = <String, dynamic>{
        'filter': 'author.id:$cleanAuthorId',
        'page': page ?? 1,
        'per-page': perPage ?? 25,
        'sort': 'publication_date:desc',
      };

      final response = await _client.get(
        '/works',
        queryParameters: queryParameters,
      );

      if (response.statusCode == 200 && response.data != null) {
        final openAlexResponse = OpenAlexResponse<WorkDto>.fromJson(
          response.data,
          (json) => WorkDto.fromJson(json as Map<String, dynamic>),
        );

        return DataSuccess(data: openAlexResponse.results);
      } else {
        return DataFailure(
          error: Exception(
            'Failed to load articles by author: Status ${response.statusCode}',
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(error: _handleDioError(e));
    } catch (e) {
      return DataFailure(error: Exception('Unexpected error: $e'));
    }
  }

  /// Search articles by topic/topic
  Future<DataState<List<WorkDto>>> getArticlesByTopic({
    required String topicId,
    int? page,
    int? perPage,
  }) async {
    try {
      final cleanTopicId = _cleanOpenAlexId(topicId);

      final queryParameters = <String, dynamic>{
        'filter': 'topics.id:$cleanTopicId',
        'page': page ?? 1,
        'per-page': perPage ?? 25,
        'sort': 'cited_by_count:desc',
      };

      final response = await _client.get(
        '/works',
        queryParameters: queryParameters,
      );

      if (response.statusCode == 200 && response.data != null) {
        final openAlexResponse = OpenAlexResponse<WorkDto>.fromJson(
          response.data,
          (json) => WorkDto.fromJson(json as Map<String, dynamic>),
        );

        return DataSuccess(data: openAlexResponse.results);
      } else {
        return DataFailure(
          error: Exception(
            'Failed to load articles by topic: Status ${response.statusCode}',
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(error: _handleDioError(e));
    } catch (e) {
      return DataFailure(error: Exception('Unexpected error: $e'));
    }
  }

  /// Search open access articles
  Future<DataState<List<WorkDto>>> getOpenAccessArticles({
    String? query,
    int? page,
    int? perPage,
  }) async {
    try {
      final queryParameters = <String, dynamic>{
        'filter': 'is_oa:true',
        'page': page ?? 1,
        'per-page': perPage ?? 25,
      };

      if (query != null && query.isNotEmpty) {
        queryParameters['search'] = query;
        queryParameters['sort'] = 'relevance_score:desc';
      } else {
        queryParameters['sort'] = 'publication_date:desc';
      }

      final response = await _client.get(
        '/works',
        queryParameters: queryParameters,
      );

      if (response.statusCode == 200 && response.data != null) {
        final openAlexResponse = OpenAlexResponse<WorkDto>.fromJson(
          response.data,
          (json) => WorkDto.fromJson(json as Map<String, dynamic>),
        );

        return DataSuccess(data: openAlexResponse.results);
      } else {
        return DataFailure(
          error: Exception(
            'Failed to load open access articles: Status ${response.statusCode}',
          ),
        );
      }
    } on DioException catch (e) {
      return DataFailure(error: _handleDioError(e));
    } catch (e) {
      return DataFailure(error: Exception('Unexpected error: $e'));
    }
  }

  /// Clean the OpenAlex ID to extract only the identifier
  /// Ejemplo: "https://openalex.org/W2741809807" -> "W2741809807"
  String _cleanOpenAlexId(String id) {
    if (id.contains('openalex.org/')) {
      return id.split('/').last;
    }
    return id;
  }

  /// Handle the Dio errors and return a descriptive exception
  Exception _handleDioError(DioException error) {
    switch (error.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return Exception(
          'Connection timeout. Please check your internet connection.',
        );

      case DioExceptionType.badResponse:
        final statusCode = error.response?.statusCode;
        if (statusCode == 404) {
          return Exception('Resource not found.');
        } else if (statusCode == 429) {
          return Exception('Too many requests. Please try again later.');
        } else if (statusCode != null && statusCode >= 500) {
          return Exception('Server error. Please try again later.');
        }
        return Exception('Request failed with status: $statusCode');

      case DioExceptionType.cancel:
        return Exception('Request was cancelled.');

      case DioExceptionType.connectionError:
        return Exception('No internet connection.');

      default:
        return Exception('An unexpected error occurred: ${error.message}');
    }
  }
}

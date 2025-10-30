import 'package:artemis_app/src/config/di/providers.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/domain/usecase/get_articles_usecase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_articles_provider.g.dart';

@riverpod
class ArticlesNotifier extends _$ArticlesNotifier {
  String _currentQuery = '';
  int _currentPage = 1;
  int _currentPerPage = 10;

  @override
  FutureOr<List<Article>> build() async {
    // Estado inicial vacío
    return [];
  }

  Future<void> fetchArticles({
    String query = '',
    int page = 1,
    int perPage = 10,
  }) async {
    _currentQuery = query;
    _currentPage = page;
    _currentPerPage = perPage;

    // Cambiar a loading
    state = const AsyncLoading();

    try {
      final result = await ref.read(getArticlesUsecaseProvider).call(
            GetArticlesParams(
              query: query,
              page: page,
              perPage: perPage,
            ),
          );

      if (result is DataSuccess<List<Article>>) {
        state = AsyncData(result.data!);
      } else if (result is DataFailure<List<Article>>) {
        state = AsyncError(
          result.error ?? Exception('Unknown error'),
          StackTrace.current,
        );
      } else {
        state = AsyncError(
          Exception('Invalid state'),
          StackTrace.current,
        );
      }
    } catch (e, st) {
      state = AsyncError(e, st);
    }
  }

  Future<void> retry() async {
    await fetchArticles(
      query: _currentQuery,
      page: _currentPage,
      perPage: _currentPerPage,
    );
  }
}

@riverpod
Future<DataState<Article>> getArticlesDetails(Ref ref, String id) async {
  return await ref.read(getArticlesDetailsUsecaseProvider).call(id);
}

@riverpod
Future<DataState<List<Article>>> getAutocompleteArticles(
    Ref ref, String query) async {
  return await ref.read(getAutocompleteArticlesUsecaseProvider).call(query);
}

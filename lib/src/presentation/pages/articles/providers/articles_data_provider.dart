import 'package:artemis_app/src/config/di/providers.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/domain/usecase/get_articles_usecase.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:artemis_app/src/presentation/providers/articles_filters_provider.dart';

part 'articles_data_provider.g.dart';

@Riverpod(keepAlive: true)
class ArticlesData extends _$ArticlesData {
  String query = '';
  int page = 1;
  int perPage = 10;
  CancelToken cancelToken = CancelToken();
  String? paginationError;

  @override
  AsyncValue<List<Article>> build() {
    return const AsyncValue.loading();
  }

  Future<void> fetchArticles([bool isRefresh = true]) async {
    final filters = ref.read(articlesFiltersNotifierProvider);
    final articles = await ref
        .read(getArticlesUsecaseProvider)
        .call(
          GetArticlesParams(
            query: query,
            page: page,
            perPage: perPage,
            cancelToken: cancelToken,
            filters: filters,
          ),
        );

    if (articles is DataSuccess<List<Article>>) {
      paginationError = null;
      if (isRefresh) {
        state = AsyncValue.data(articles.data!);
      } else {
        appendArticles(articles.data!);
      }
    } else if (articles is DataFailure<List<Article>>) {
      // If the error is a request cancellation, do not show it in the UI
      // keep the loading state
      final errorMessage = articles.error.toString();
      if (!errorMessage.contains('Request was cancelled')) {
        // If we're paginating and already have articles, keep them
        // and don't replace the state with an error
        if (!isRefresh && state.hasValue && state.value!.isNotEmpty) {
          // Keep current articles, just decrement page to allow retry
          page--;
          // Store the error to show in UI
          paginationError = errorMessage;
          // Force state update to trigger listeners by creating a new list
          final currentArticles = state.value!;
          state = AsyncValue.data([...currentArticles]);
        } else {
          // Only show error state if it's a refresh or we have no articles yet
          state = AsyncValue.error(articles.error!, StackTrace.current);
        }
      }
    }
  }

  Future<void> loadMoreArticles() async {
    page++;
    await fetchArticles(false);
  }

  /// Adds articles to the current list (for infinite scroll)
  void appendArticles(List<Article> newArticles) {
    final currentArticles = state.value ?? [];
    state = AsyncData([...currentArticles, ...newArticles]);
  }

  /// Forces revalidation
  Future<void> refresh() async {
    query = '';
    ref.invalidateSelf();
  }

  Future<void> updateQuery(String query, CancelToken cancelToken) async {
    state = const AsyncValue.loading();
    this.query = query;
    page = 1;
    this.cancelToken = cancelToken;
    await fetchArticles();
  }
}

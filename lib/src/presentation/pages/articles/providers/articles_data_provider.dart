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
      if (isRefresh) {
        state = AsyncValue.data(articles.data!);
      } else {
        appendArticles(articles.data!);
      }
    } else if (articles is DataFailure<List<Article>>) {
      state = AsyncValue.error(articles.error!, StackTrace.current);
    }
  }

  Future<void> loadMoreArticles() async {
    page++;
    await fetchArticles(false);
  }

  /// Agrega artículos a la lista actual (para infinite scroll)
  void appendArticles(List<Article> newArticles) {
    final currentArticles = state.value ?? [];
    state = AsyncData([...currentArticles, ...newArticles]);
  }

  /// Fuerza revalidación
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

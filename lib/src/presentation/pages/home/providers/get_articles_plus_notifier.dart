import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_articles_plus_notifier.g.dart';

@Riverpod(keepAlive: true)
class GetArticlesPlusNotifier extends _$GetArticlesPlusNotifier {
  @override
  List<Article> build() {
    return [];
  }

  void loadInitialArticles(List<Article> initialArticles) {
    state = initialArticles;
  }

  Future<void> getArticlesAndFavorites(
    String query,
    CancelToken cancelToken,
  ) async {}

  AsyncValue<List<Article>> getFavorites() {
    return const AsyncLoading();
  }
}

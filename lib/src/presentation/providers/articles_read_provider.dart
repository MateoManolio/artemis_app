import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'articles_read_provider.g.dart';

@riverpod
class ArticlesReadProvider extends _$ArticlesReadProvider {
  bool resetEveryWeek = false;

  @override
  int build() {
    _retestArticlesRead();
    // TODO: load the shared preferences
    return 0;
  }

  void incrementArticlesRead() => state = state + 1;

  void _retestArticlesRead() {
    if (true && !resetEveryWeek) {
      resetEveryWeek = true;
      state = 0;
    }
  }
}

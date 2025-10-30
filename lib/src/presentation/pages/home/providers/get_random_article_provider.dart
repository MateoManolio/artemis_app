import 'package:artemis_app/src/config/di/providers.dart';
import 'package:artemis_app/src/core/util/data_state.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_random_article_provider.g.dart';

@riverpod
class GetRandomArticleProvider extends _$GetRandomArticleProvider {
  @override
  Future<Article> build() async {
    final result = await ref.watch(getRandomArticleUsecaseProvider).call();
    if (result is DataSuccess) {
      return result.data!;
    } else {
      throw Exception(result.error!.toString());
    }
  }
}

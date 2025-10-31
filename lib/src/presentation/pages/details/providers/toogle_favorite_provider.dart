import 'package:artemis_app/src/config/di/providers.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:artemis_app/src/presentation/pages/home/providers/get_favorites_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'toogle_favorite_provider.g.dart';

@riverpod
Future<void> toggleFavorite(Ref ref, Article article) async {
  await ref.read(toggleFavoriteUsecaseProvider).call(article);

  ref.invalidate(getFavoritesProvider);
}

import 'package:artemis_app/src/config/di/providers.dart';
import 'package:artemis_app/src/domain/entity/article.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'get_favorites_provider.g.dart';

@Riverpod(keepAlive: true)
Future<List<Article>> getFavorites(Ref ref) async {
  final favorites = await ref.read(getAllFavoritesUsecaseProvider).call();
  return favorites;
}

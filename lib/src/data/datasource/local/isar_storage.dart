import 'package:isar_community/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:artemis_app/src/data/models/db/article_db_model.dart';
import 'package:artemis_app/src/data/models/db/user_db_model.dart';

class IsarStorage {
  static Isar? _instance;

  static Future<Isar> getInstance() async {
    if (_instance != null) return _instance!;

    final dir = await getApplicationDocumentsDirectory();
    _instance = await Isar.open(
      [ArticleDbModelSchema, UserDbModelSchema],
      directory: dir.path,
      name: 'artemis_db',
    );

    return _instance!;
  }

  static Future<void> close() async {
    await _instance?.close();
    _instance = null;
  }
}

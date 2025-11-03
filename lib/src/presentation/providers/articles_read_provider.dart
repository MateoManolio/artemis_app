import 'package:artemis_app/src/core/util/config_constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'articles_read_provider.g.dart';

@riverpod
class ArticlesReadProvider extends _$ArticlesReadProvider {
  @override
  int build() {
    _initializeArticlesRead();
    return 0;
  }

  /// Initialize and load articles read from SharedPreferences
  Future<void> _initializeArticlesRead() async {
    final prefs = await SharedPreferences.getInstance();

    // Check if we need to reset because it's a new week (Monday)
    await _checkWeeklyReset(prefs);

    // Load the current value (after potential reset)
    final currentValue = prefs.getInt(ConfigConstants.articlesRead) ?? 0;
    state = currentValue;
  }

  /// Check if we need to reset because it's a new week
  Future<void> _checkWeeklyReset(SharedPreferences prefs) async {
    final lastUpdateString = prefs.getString(ConfigConstants.lastResetDate);
    final now = DateTime.now();

    // Calculate the most recent Monday
    final currentMonday = _getMostRecentMonday(now);

    if (lastUpdateString == null) {
      // First time using the app, save current date
      await prefs.setString(
        ConfigConstants.lastResetDate,
        now.toIso8601String(),
      );
      return;
    }

    final lastUpdate = DateTime.parse(lastUpdateString);

    // If the last update was before the most recent Monday, reset
    if (lastUpdate.isBefore(currentMonday)) {
      await prefs.setInt(ConfigConstants.articlesRead, 0);
      await prefs.setString(
        ConfigConstants.lastResetDate,
        now.toIso8601String(),
      );
    }
  }

  /// Get the most recent Monday (including today if today is Monday)
  DateTime _getMostRecentMonday(DateTime date) {
    // DateTime.weekday returns 1 for Monday, 7 for Sunday
    final daysSinceMonday = date.weekday - 1;
    return DateTime(
      date.year,
      date.month,
      date.day,
    ).subtract(Duration(days: daysSinceMonday));
  }

  /// Increment articles read and save to SharedPreferences
  Future<void> incrementArticlesRead() async {
    state = state + 1;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(ConfigConstants.articlesRead, state);
    // Update last update date
    await prefs.setString(
      ConfigConstants.lastResetDate,
      DateTime.now().toIso8601String(),
    );
  }

  /// Manually reset articles read count
  Future<void> resetArticlesRead() async {
    state = 0;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(ConfigConstants.articlesRead, 0);
    await prefs.setString(
      ConfigConstants.lastResetDate,
      DateTime.now().toIso8601String(),
    );
  }
}

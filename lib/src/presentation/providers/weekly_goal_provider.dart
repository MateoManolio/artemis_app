import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weekly_goal_provider.g.dart';

@riverpod
class WeeklyGoalNotifier extends _$WeeklyGoalNotifier {
  @override
  int build() {
    return 10;
  }

  void setWeeklyGoal(int goal) {
    state = goal;
  }
}
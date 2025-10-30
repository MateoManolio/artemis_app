// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_goal_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(WeeklyGoalNotifier)
const weeklyGoalProvider = WeeklyGoalNotifierProvider._();

final class WeeklyGoalNotifierProvider
    extends $NotifierProvider<WeeklyGoalNotifier, int> {
  const WeeklyGoalNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'weeklyGoalProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$weeklyGoalNotifierHash();

  @$internal
  @override
  WeeklyGoalNotifier create() => WeeklyGoalNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(int value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<int>(value),
    );
  }
}

String _$weeklyGoalNotifierHash() =>
    r'73da8cacd281645959b8020fda0e20f13f6f6065';

abstract class _$WeeklyGoalNotifier extends $Notifier<int> {
  int build();
  @$mustCallSuper
  @override
  void runBuild() {
    final created = build();
    final ref = this.ref as $Ref<int, int>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<int, int>,
              int,
              Object?,
              Object?
            >;
    element.handleValue(ref, created);
  }
}

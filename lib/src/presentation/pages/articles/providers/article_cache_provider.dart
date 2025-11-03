import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'article_cache_provider.g.dart';

@Riverpod(keepAlive: true)
class ArticleCache extends _$ArticleCache {
  @override
  CacheState build() {
    return const CacheState();
  }

  void markAsLoaded() {
    state = state.copyWith(
      hasLoadedInitialData: true,
      lastFetchTime: DateTime.now(),
    );
  }

  void setCacheExpiration(Duration duration) {
    state = state.copyWith(cacheExpiration: duration);
  }
}

/// Model for cache state
class CacheState {
  final bool hasLoadedInitialData;
  final DateTime? lastFetchTime;
  final Duration cacheExpiration;

  const CacheState({
    this.hasLoadedInitialData = false,
    this.lastFetchTime,
    this.cacheExpiration = const Duration(minutes: 5),
  });

  CacheState copyWith({
    bool? hasLoadedInitialData,
    DateTime? lastFetchTime,
    Duration? cacheExpiration,
  }) {
    return CacheState(
      hasLoadedInitialData: hasLoadedInitialData ?? this.hasLoadedInitialData,
      lastFetchTime: lastFetchTime ?? this.lastFetchTime,
      cacheExpiration: cacheExpiration ?? this.cacheExpiration,
    );
  }

  /// Checks if the cache has expired
  bool get isExpired {
    if (lastFetchTime == null) return true;
    final now = DateTime.now();
    return now.difference(lastFetchTime!) > cacheExpiration;
  }

  /// Checks if data needs to be loaded
  bool get needsRefresh => !hasLoadedInitialData || isExpired;
}

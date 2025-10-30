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

/// Modelo para el estado de caché
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

  /// Verifica si el caché ha expirado
  bool get isExpired {
    if (lastFetchTime == null) return true;
    final now = DateTime.now();
    return now.difference(lastFetchTime!) > cacheExpiration;
  }

  /// Verifica si se necesita cargar datos
  bool get needsRefresh => !hasLoadedInitialData || isExpired;
}

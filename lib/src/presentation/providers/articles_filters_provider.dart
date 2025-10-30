import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Modelo para filtros de búsqueda de artículos
/// Preparado para extensión futura con filtros de OpenAlex
class ArticlesFilters {
  final List<String>? types;
  final List<String>? openAccessStatus;
  final int? fromYear;
  final int? toYear;
  final bool? isOa;
  final String? institutionId;
  final String? authorId;
  final List<String>? topics;
  final String? sort;

  const ArticlesFilters({
    this.types,
    this.openAccessStatus,
    this.fromYear,
    this.toYear,
    this.isOa,
    this.institutionId,
    this.authorId,
    this.topics,
    this.sort,
  });

  ArticlesFilters copyWith({
    List<String>? types,
    List<String>? openAccessStatus,
    int? fromYear,
    int? toYear,
    bool? isOa,
    String? institutionId,
    String? authorId,
    List<String>? topics,
    String? sort,
  }) {
    return ArticlesFilters(
      types: types ?? this.types,
      openAccessStatus: openAccessStatus ?? this.openAccessStatus,
      fromYear: fromYear ?? this.fromYear,
      toYear: toYear ?? this.toYear,
      isOa: isOa ?? this.isOa,
      institutionId: institutionId ?? this.institutionId,
      authorId: authorId ?? this.authorId,
      topics: topics ?? this.topics,
      sort: sort ?? this.sort,
    );
  }

  /// Verifica si hay filtros activos
  bool get hasActiveFilters =>
      types != null ||
      openAccessStatus != null ||
      fromYear != null ||
      toYear != null ||
      isOa != null ||
      institutionId != null ||
      authorId != null ||
      topics != null ||
      sort != null;

  /// Convierte los filtros a query parameters para OpenAlex API
  Map<String, dynamic> toQueryParams() {
    final params = <String, dynamic>{};

    if (types != null && types!.isNotEmpty) {
      params['type'] = types!.join('|');
    }
    if (openAccessStatus != null && openAccessStatus!.isNotEmpty) {
      params['open_access.oa_status'] = openAccessStatus!.join('|');
    }
    if (fromYear != null) {
      params['from_publication_date'] = '$fromYear-01-01';
    }
    if (toYear != null) {
      params['to_publication_date'] = '$toYear-12-31';
    }
    if (isOa != null) {
      params['is_oa'] = isOa.toString();
    }
    if (institutionId != null) {
      params['authorships.institutions.id'] = institutionId;
    }
    if (authorId != null) {
      params['authorships.author.id'] = authorId;
    }
    if (topics != null && topics!.isNotEmpty) {
      params['topics.id'] = topics!.join('|');
    }
    if (sort != null) {
      params['sort'] = sort;
    }

    return params;
  }
}

/// Provider para gestionar los filtros de artículos
class ArticlesFiltersNotifier extends Notifier<ArticlesFilters> {
  @override
  ArticlesFilters build() {
    return const ArticlesFilters();
  }

  /// Actualiza los tipos de artículo
  void updateTypes(List<String> types) {
    state = state.copyWith(types: types);
  }

  /// Actualiza el estado de open access
  void updateOpenAccessStatus(List<String> status) {
    state = state.copyWith(openAccessStatus: status);
  }

  /// Actualiza el rango de años
  void updateYearRange({int? fromYear, int? toYear}) {
    state = state.copyWith(fromYear: fromYear, toYear: toYear);
  }

  /// Filtra solo open access
  void setOnlyOpenAccess(bool value) {
    state = state.copyWith(isOa: value);
  }

  /// Actualiza el ordenamiento
  void updateSort(String sort) {
    state = state.copyWith(sort: sort);
  }

  /// Resetea todos los filtros
  void reset() {
    state = const ArticlesFilters();
  }

  /// Aplica múltiples filtros a la vez
  void applyFilters(ArticlesFilters filters) {
    state = filters;
  }
}

// Provider explícito sin codegen para evitar dependencias del archivo generado
final articlesFiltersNotifierProvider =
    NotifierProvider<ArticlesFiltersNotifier, ArticlesFilters>(
      ArticlesFiltersNotifier.new,
    );

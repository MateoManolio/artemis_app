import 'package:flutter_riverpod/flutter_riverpod.dart';

/// Model for article search filters
/// Prepared for future extension with OpenAlex filters
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

  /// Checks if there are active filters
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

  /// Converts filters to query parameters for OpenAlex API
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

/// Provider to manage article filters
class ArticlesFiltersNotifier extends Notifier<ArticlesFilters> {
  @override
  ArticlesFilters build() {
    return const ArticlesFilters();
  }

  /// Updates article types
  void updateTypes(List<String> types) {
    state = state.copyWith(types: types);
  }

  /// Updates open access status
  void updateOpenAccessStatus(List<String> status) {
    state = state.copyWith(openAccessStatus: status);
  }

  /// Updates year range
  void updateYearRange({int? fromYear, int? toYear}) {
    state = state.copyWith(fromYear: fromYear, toYear: toYear);
  }

  /// Filters only open access
  void setOnlyOpenAccess(bool value) {
    state = state.copyWith(isOa: value);
  }

  /// Updates sorting
  void updateSort(String sort) {
    state = state.copyWith(sort: sort);
  }

  /// Resets all filters
  void reset() {
    state = const ArticlesFilters();
  }

  /// Applies multiple filters at once
  void applyFilters(ArticlesFilters filters) {
    state = filters;
  }
}

// Explicit provider without codegen to avoid dependencies on generated file
final articlesFiltersNotifierProvider =
    NotifierProvider<ArticlesFiltersNotifier, ArticlesFilters>(
      ArticlesFiltersNotifier.new,
    );

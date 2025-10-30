import 'package:artemis_app/src/presentation/providers/articles_filters_provider.dart';

class OpenAlexFiltersMapper {
  static Map<String, dynamic> toQueryParameters(ArticlesFilters filters) {
    final q = <String, dynamic>{};

    // search filters que van como 'filter' (string csv)
    final List<String> filterParts = [];

    if (filters.isOa != null) {
      filterParts.add('is_oa:${filters.isOa}');
    }
    if (filters.fromYear != null) {
      filterParts.add('from_publication_date:${filters.fromYear}-01-01');
    }
    if (filters.toYear != null) {
      filterParts.add('to_publication_date:${filters.toYear}-12-31');
    }
    if (filters.types != null && filters.types!.isNotEmpty) {
      filterParts.add('type:${filters.types!.join('|')}');
    }
    if (filters.openAccessStatus != null &&
        filters.openAccessStatus!.isNotEmpty) {
      filterParts.add(
        'open_access.oa_status:${filters.openAccessStatus!.join('|')}',
      );
    }
    if (filters.institutionId != null) {
      filterParts.add('authorships.institutions.id:${filters.institutionId}');
    }
    if (filters.authorId != null) {
      filterParts.add('authorships.author.id:${filters.authorId}');
    }
    if (filters.topics != null && filters.topics!.isNotEmpty) {
      filterParts.add('topics.id:${filters.topics!.join('|')}');
    }

    if (filterParts.isNotEmpty) {
      q['filter'] = filterParts.join(',');
    }

    if (filters.sort != null) {
      q['sort'] = filters.sort;
    }

    return q;
  }
}

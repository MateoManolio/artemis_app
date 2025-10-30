// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkDto _$WorkDtoFromJson(Map<String, dynamic> json) => _WorkDto(
  id: json['id'] as String?,
  doi: const UriConverter().fromJson(json['doi'] as String?),
  title: json['title'] as String?,
  displayName: json['display_name'] as String?,
  publicationYear: (json['publication_year'] as num?)?.toInt(),
  publicationDate: const DateTimeConverter().fromJson(
    json['publication_date'] as String?,
  ),
  ids: json['ids'] == null
      ? null
      : WorkIdsDto.fromJson(json['ids'] as Map<String, dynamic>),
  language: json['language'] as String?,
  primaryLocation: json['primary_location'] == null
      ? null
      : PrimaryLocationDto.fromJson(
          json['primary_location'] as Map<String, dynamic>,
        ),
  type: json['type'] as String?,
  typeCrossref: json['type_crossref'] as String?,
  indexedIn: (json['indexed_in'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  openAccess: json['open_access'] == null
      ? null
      : OpenAccessDto.fromJson(json['open_access'] as Map<String, dynamic>),
  authorships: (json['authorships'] as List<dynamic>?)
      ?.map((e) => AuthorshipDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  countriesDistinctCount: (json['countries_distinct_count'] as num?)?.toInt(),
  institutionsDistinctCount: (json['institutions_distinct_count'] as num?)
      ?.toInt(),
  correspondingAuthorIds: (json['corresponding_author_ids'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  correspondingInstitutionIds:
      (json['corresponding_institution_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  apcList: json['apc_list'] == null
      ? null
      : MoneyDto.fromJson(json['apc_list'] as Map<String, dynamic>),
  apcPaid: json['apc_paid'] == null
      ? null
      : MoneyDto.fromJson(json['apc_paid'] as Map<String, dynamic>),
  fwci: (json['fwci'] as num?)?.toDouble(),
  hasFulltext: json['has_fulltext'] as bool?,
  fulltextOrigin: json['fulltext_origin'] as String?,
  citedByCount: (json['cited_by_count'] as num?)?.toInt(),
  citationNormalizedPercentile: json['citation_normalized_percentile'] == null
      ? null
      : CitationNormalizedPercentileDto.fromJson(
          json['citation_normalized_percentile'] as Map<String, dynamic>,
        ),
  citedByPercentileYear: json['cited_by_percentile_year'] == null
      ? null
      : IntRangeDto.fromJson(
          json['cited_by_percentile_year'] as Map<String, dynamic>,
        ),
  biblio: json['biblio'] == null
      ? null
      : BiblioDto.fromJson(json['biblio'] as Map<String, dynamic>),
  isRetracted: json['is_retracted'] as bool?,
  isParatext: json['is_paratext'] as bool?,
  primaryTopic: json['primary_topic'] == null
      ? null
      : TopicDto.fromJson(json['primary_topic'] as Map<String, dynamic>),
  topics: (json['topics'] as List<dynamic>?)
      ?.map((e) => TopicDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  keywords: (json['keywords'] as List<dynamic>?)
      ?.map((e) => KeywordDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  concepts: (json['concepts'] as List<dynamic>?)
      ?.map((e) => ConceptDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  mesh: json['mesh'] as List<dynamic>?,
  locationsCount: (json['locations_count'] as num?)?.toInt(),
  locations: (json['locations'] as List<dynamic>?)
      ?.map((e) => LocationDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  bestOaLocation: json['best_oa_location'] == null
      ? null
      : LocationDto.fromJson(json['best_oa_location'] as Map<String, dynamic>),
  sustainableDevelopmentGoals:
      json['sustainable_development_goals'] as List<dynamic>?,
  grants: json['grants'] as List<dynamic>?,
  datasets: json['datasets'] as List<dynamic>?,
  versions: json['versions'] as List<dynamic>?,
  referencedWorksCount: (json['referenced_works_count'] as num?)?.toInt(),
  referencedWorks: (json['referenced_works'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  relatedWorks: (json['related_works'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  abstractInvertedIndex:
      (json['abstract_inverted_index'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>).map((e) => (e as num).toInt()).toList(),
        ),
      ),
  countsByYear: (json['counts_by_year'] as List<dynamic>?)
      ?.map((e) => CountByYearDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  updatedDate: const DateTimeConverter().fromJson(
    json['updated_date'] as String?,
  ),
  createdDate: const DateTimeConverter().fromJson(
    json['created_date'] as String?,
  ),
);

Map<String, dynamic> _$WorkDtoToJson(_WorkDto instance) => <String, dynamic>{
  'id': instance.id,
  'doi': const UriConverter().toJson(instance.doi),
  'title': instance.title,
  'display_name': instance.displayName,
  'publication_year': instance.publicationYear,
  'publication_date': const DateTimeConverter().toJson(
    instance.publicationDate,
  ),
  'ids': instance.ids?.toJson(),
  'language': instance.language,
  'primary_location': instance.primaryLocation?.toJson(),
  'type': instance.type,
  'type_crossref': instance.typeCrossref,
  'indexed_in': instance.indexedIn,
  'open_access': instance.openAccess?.toJson(),
  'authorships': instance.authorships?.map((e) => e.toJson()).toList(),
  'countries_distinct_count': instance.countriesDistinctCount,
  'institutions_distinct_count': instance.institutionsDistinctCount,
  'corresponding_author_ids': instance.correspondingAuthorIds,
  'corresponding_institution_ids': instance.correspondingInstitutionIds,
  'apc_list': instance.apcList?.toJson(),
  'apc_paid': instance.apcPaid?.toJson(),
  'fwci': instance.fwci,
  'has_fulltext': instance.hasFulltext,
  'fulltext_origin': instance.fulltextOrigin,
  'cited_by_count': instance.citedByCount,
  'citation_normalized_percentile': instance.citationNormalizedPercentile
      ?.toJson(),
  'cited_by_percentile_year': instance.citedByPercentileYear?.toJson(),
  'biblio': instance.biblio?.toJson(),
  'is_retracted': instance.isRetracted,
  'is_paratext': instance.isParatext,
  'primary_topic': instance.primaryTopic?.toJson(),
  'topics': instance.topics?.map((e) => e.toJson()).toList(),
  'keywords': instance.keywords?.map((e) => e.toJson()).toList(),
  'concepts': instance.concepts?.map((e) => e.toJson()).toList(),
  'mesh': instance.mesh,
  'locations_count': instance.locationsCount,
  'locations': instance.locations?.map((e) => e.toJson()).toList(),
  'best_oa_location': instance.bestOaLocation?.toJson(),
  'sustainable_development_goals': instance.sustainableDevelopmentGoals,
  'grants': instance.grants,
  'datasets': instance.datasets,
  'versions': instance.versions,
  'referenced_works_count': instance.referencedWorksCount,
  'referenced_works': instance.referencedWorks,
  'related_works': instance.relatedWorks,
  'abstract_inverted_index': instance.abstractInvertedIndex,
  'counts_by_year': instance.countsByYear?.map((e) => e.toJson()).toList(),
  'updated_date': const DateTimeConverter().toJson(instance.updatedDate),
  'created_date': const DateTimeConverter().toJson(instance.createdDate),
};

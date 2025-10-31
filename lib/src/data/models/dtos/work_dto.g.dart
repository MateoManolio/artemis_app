// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkDto _$WorkDtoFromJson(Map<String, dynamic> json) => _WorkDto(
  id: json['id'] as String?,
  doi: const UriConverter().fromJson(json['doi'] as String?),
  title: json['title'] as String?,
  displayName: json['displayName'] as String?,
  publicationYear: (json['publicationYear'] as num?)?.toInt(),
  publicationDate: const DateTimeConverter().fromJson(
    json['publicationDate'] as String?,
  ),
  ids: json['ids'] == null
      ? null
      : WorkIdsDto.fromJson(json['ids'] as Map<String, dynamic>),
  language: json['language'] as String?,
  primaryLocation: json['primaryLocation'] == null
      ? null
      : PrimaryLocationDto.fromJson(
          json['primaryLocation'] as Map<String, dynamic>,
        ),
  type: json['type'] as String?,
  typeCrossref: json['typeCrossref'] as String?,
  indexedIn: (json['indexedIn'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  openAccess: json['openAccess'] == null
      ? null
      : OpenAccessDto.fromJson(json['openAccess'] as Map<String, dynamic>),
  authorships: (json['authorships'] as List<dynamic>?)
      ?.map((e) => AuthorshipDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  countriesDistinctCount: (json['countriesDistinctCount'] as num?)?.toInt(),
  institutionsDistinctCount: (json['institutionsDistinctCount'] as num?)
      ?.toInt(),
  correspondingAuthorIds: (json['correspondingAuthorIds'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  correspondingInstitutionIds:
      (json['correspondingInstitutionIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  apcList: json['apcList'] == null
      ? null
      : MoneyDto.fromJson(json['apcList'] as Map<String, dynamic>),
  apcPaid: json['apcPaid'] == null
      ? null
      : MoneyDto.fromJson(json['apcPaid'] as Map<String, dynamic>),
  fwci: (json['fwci'] as num?)?.toDouble(),
  hasFulltext: json['hasFulltext'] as bool?,
  fulltextOrigin: json['fulltextOrigin'] as String?,
  citedByCount: (json['citedByCount'] as num?)?.toInt(),
  citationNormalizedPercentile: json['citationNormalizedPercentile'] == null
      ? null
      : CitationNormalizedPercentileDto.fromJson(
          json['citationNormalizedPercentile'] as Map<String, dynamic>,
        ),
  citedByPercentileYear: json['citedByPercentileYear'] == null
      ? null
      : IntRangeDto.fromJson(
          json['citedByPercentileYear'] as Map<String, dynamic>,
        ),
  biblio: json['biblio'] == null
      ? null
      : BiblioDto.fromJson(json['biblio'] as Map<String, dynamic>),
  isRetracted: json['isRetracted'] as bool?,
  isParatext: json['isParatext'] as bool?,
  primaryTopic: json['primaryTopic'] == null
      ? null
      : TopicDto.fromJson(json['primaryTopic'] as Map<String, dynamic>),
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
  locationsCount: (json['locationsCount'] as num?)?.toInt(),
  locations: (json['locations'] as List<dynamic>?)
      ?.map((e) => LocationDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  bestOaLocation: json['bestOaLocation'] == null
      ? null
      : LocationDto.fromJson(json['bestOaLocation'] as Map<String, dynamic>),
  sustainableDevelopmentGoals:
      json['sustainableDevelopmentGoals'] as List<dynamic>?,
  grants: json['grants'] as List<dynamic>?,
  datasets: json['datasets'] as List<dynamic>?,
  versions: json['versions'] as List<dynamic>?,
  referencedWorksCount: (json['referencedWorksCount'] as num?)?.toInt(),
  referencedWorks: (json['referencedWorks'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  relatedWorks: (json['relatedWorks'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  abstractInvertedIndex:
      (json['abstractInvertedIndex'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(
          k,
          (e as List<dynamic>).map((e) => (e as num).toInt()).toList(),
        ),
      ),
  countsByYear: (json['countsByYear'] as List<dynamic>?)
      ?.map((e) => CountByYearDto.fromJson(e as Map<String, dynamic>))
      .toList(),
  updatedDate: const DateTimeConverter().fromJson(
    json['updatedDate'] as String?,
  ),
  createdDate: const DateTimeConverter().fromJson(
    json['createdDate'] as String?,
  ),
);

Map<String, dynamic> _$WorkDtoToJson(_WorkDto instance) => <String, dynamic>{
  'id': instance.id,
  'doi': const UriConverter().toJson(instance.doi),
  'title': instance.title,
  'displayName': instance.displayName,
  'publicationYear': instance.publicationYear,
  'publicationDate': const DateTimeConverter().toJson(instance.publicationDate),
  'ids': instance.ids,
  'language': instance.language,
  'primaryLocation': instance.primaryLocation,
  'type': instance.type,
  'typeCrossref': instance.typeCrossref,
  'indexedIn': instance.indexedIn,
  'openAccess': instance.openAccess,
  'authorships': instance.authorships,
  'countriesDistinctCount': instance.countriesDistinctCount,
  'institutionsDistinctCount': instance.institutionsDistinctCount,
  'correspondingAuthorIds': instance.correspondingAuthorIds,
  'correspondingInstitutionIds': instance.correspondingInstitutionIds,
  'apcList': instance.apcList,
  'apcPaid': instance.apcPaid,
  'fwci': instance.fwci,
  'hasFulltext': instance.hasFulltext,
  'fulltextOrigin': instance.fulltextOrigin,
  'citedByCount': instance.citedByCount,
  'citationNormalizedPercentile': instance.citationNormalizedPercentile,
  'citedByPercentileYear': instance.citedByPercentileYear,
  'biblio': instance.biblio,
  'isRetracted': instance.isRetracted,
  'isParatext': instance.isParatext,
  'primaryTopic': instance.primaryTopic,
  'topics': instance.topics,
  'keywords': instance.keywords,
  'concepts': instance.concepts,
  'mesh': instance.mesh,
  'locationsCount': instance.locationsCount,
  'locations': instance.locations,
  'bestOaLocation': instance.bestOaLocation,
  'sustainableDevelopmentGoals': instance.sustainableDevelopmentGoals,
  'grants': instance.grants,
  'datasets': instance.datasets,
  'versions': instance.versions,
  'referencedWorksCount': instance.referencedWorksCount,
  'referencedWorks': instance.referencedWorks,
  'relatedWorks': instance.relatedWorks,
  'abstractInvertedIndex': instance.abstractInvertedIndex,
  'countsByYear': instance.countsByYear,
  'updatedDate': const DateTimeConverter().toJson(instance.updatedDate),
  'createdDate': const DateTimeConverter().toJson(instance.createdDate),
};

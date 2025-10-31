// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'openalex_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenAlexResponse<E> _$OpenAlexResponseFromJson<E>(
  Map<String, dynamic> json,
  E Function(Object? json) fromJsonE,
) => _OpenAlexResponse<E>(
  meta: OpenAlexMeta.fromJson(json['meta'] as Map<String, dynamic>),
  results: (json['results'] as List<dynamic>).map(fromJsonE).toList(),
  groupBy: (json['groupBy'] as List<dynamic>?)
      ?.map((e) => OpenAlexGroupBy.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OpenAlexResponseToJson<E>(
  _OpenAlexResponse<E> instance,
  Object? Function(E value) toJsonE,
) => <String, dynamic>{
  'meta': instance.meta,
  'results': instance.results.map(toJsonE).toList(),
  'groupBy': instance.groupBy,
};

_OpenAlexMeta _$OpenAlexMetaFromJson(Map<String, dynamic> json) =>
    _OpenAlexMeta(
      count: (json['count'] as num).toInt(),
      dbResponseTimeMs: (json['dbResponseTimeMs'] as num?)?.toInt(),
      page: (json['page'] as num).toInt(),
      perPage: (json['perPage'] as num).toInt(),
      groupsCount: (json['groupsCount'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OpenAlexMetaToJson(_OpenAlexMeta instance) =>
    <String, dynamic>{
      'count': instance.count,
      'dbResponseTimeMs': instance.dbResponseTimeMs,
      'page': instance.page,
      'perPage': instance.perPage,
      'groupsCount': instance.groupsCount,
    };

_OpenAlexGroupBy _$OpenAlexGroupByFromJson(Map<String, dynamic> json) =>
    _OpenAlexGroupBy(
      key: json['key'] as String?,
      keyDisplayName: json['keyDisplayName'],
      count: (json['count'] as num?)?.toInt(),
      filter: json['filter'] as Map<String, dynamic>?,
      value: json['value'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$OpenAlexGroupByToJson(_OpenAlexGroupBy instance) =>
    <String, dynamic>{
      'key': instance.key,
      'keyDisplayName': instance.keyDisplayName,
      'count': instance.count,
      'filter': instance.filter,
      'value': instance.value,
    };

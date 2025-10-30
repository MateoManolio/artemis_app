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
  groupBy: (json['group_by'] as List<dynamic>?)
      ?.map((e) => OpenAlexGroupBy.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$OpenAlexResponseToJson<E>(
  _OpenAlexResponse<E> instance,
  Object? Function(E value) toJsonE,
) => <String, dynamic>{
  'meta': instance.meta.toJson(),
  'results': instance.results.map(toJsonE).toList(),
  'group_by': instance.groupBy?.map((e) => e.toJson()).toList(),
};

_OpenAlexMeta _$OpenAlexMetaFromJson(Map<String, dynamic> json) =>
    _OpenAlexMeta(
      count: (json['count'] as num).toInt(),
      dbResponseTimeMs: (json['db_response_time_ms'] as num?)?.toInt(),
      page: (json['page'] as num).toInt(),
      perPage: (json['per_page'] as num).toInt(),
      groupsCount: (json['groups_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$OpenAlexMetaToJson(_OpenAlexMeta instance) =>
    <String, dynamic>{
      'count': instance.count,
      'db_response_time_ms': instance.dbResponseTimeMs,
      'page': instance.page,
      'per_page': instance.perPage,
      'groups_count': instance.groupsCount,
    };

_OpenAlexGroupBy _$OpenAlexGroupByFromJson(Map<String, dynamic> json) =>
    _OpenAlexGroupBy(
      key: json['key'] as String?,
      keyDisplayName: json['key_display_name'],
      count: (json['count'] as num?)?.toInt(),
      filter: json['filter'] as Map<String, dynamic>?,
      value: json['value'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$OpenAlexGroupByToJson(_OpenAlexGroupBy instance) =>
    <String, dynamic>{
      'key': instance.key,
      'key_display_name': instance.keyDisplayName,
      'count': instance.count,
      'filter': instance.filter,
      'value': instance.value,
    };

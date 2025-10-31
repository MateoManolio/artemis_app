// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SourceDto _$SourceDtoFromJson(Map<String, dynamic> json) => _SourceDto(
  id: json['id'] as String?,
  displayName: json['displayName'] as String?,
  issnL: json['issnL'] as String?,
  issn: (json['issn'] as List<dynamic>?)?.map((e) => e as String).toList(),
  isOa: json['isOa'] as bool?,
  isInDoaj: json['isInDoaj'] as bool?,
  isIndexedInScopus: json['isIndexedInScopus'] as bool?,
  isCore: json['isCore'] as bool?,
  hostOrganization: json['hostOrganization'] as String?,
  hostOrganizationName: json['hostOrganizationName'] as String?,
  hostOrganizationLineage: (json['hostOrganizationLineage'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  hostOrganizationLineageNames:
      (json['hostOrganizationLineageNames'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  type: json['type'] as String?,
);

Map<String, dynamic> _$SourceDtoToJson(_SourceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'issnL': instance.issnL,
      'issn': instance.issn,
      'isOa': instance.isOa,
      'isInDoaj': instance.isInDoaj,
      'isIndexedInScopus': instance.isIndexedInScopus,
      'isCore': instance.isCore,
      'hostOrganization': instance.hostOrganization,
      'hostOrganizationName': instance.hostOrganizationName,
      'hostOrganizationLineage': instance.hostOrganizationLineage,
      'hostOrganizationLineageNames': instance.hostOrganizationLineageNames,
      'type': instance.type,
    };

// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SourceDto _$SourceDtoFromJson(Map<String, dynamic> json) => _SourceDto(
  id: json['id'] as String?,
  displayName: json['display_name'] as String?,
  issnL: json['issn_l'] as String?,
  issn: (json['issn'] as List<dynamic>?)?.map((e) => e as String).toList(),
  isOa: json['is_oa'] as bool?,
  isInDoaj: json['is_in_doaj'] as bool?,
  isIndexedInScopus: json['is_indexed_in_scopus'] as bool?,
  isCore: json['is_core'] as bool?,
  hostOrganization: json['host_organization'] as String?,
  hostOrganizationName: json['host_organization_name'] as String?,
  hostOrganizationLineage: (json['host_organization_lineage'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  hostOrganizationLineageNames:
      (json['host_organization_lineage_names'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
  type: json['type'] as String?,
);

Map<String, dynamic> _$SourceDtoToJson(_SourceDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'issn_l': instance.issnL,
      'issn': instance.issn,
      'is_oa': instance.isOa,
      'is_in_doaj': instance.isInDoaj,
      'is_indexed_in_scopus': instance.isIndexedInScopus,
      'is_core': instance.isCore,
      'host_organization': instance.hostOrganization,
      'host_organization_name': instance.hostOrganizationName,
      'host_organization_lineage': instance.hostOrganizationLineage,
      'host_organization_lineage_names': instance.hostOrganizationLineageNames,
      'type': instance.type,
    };

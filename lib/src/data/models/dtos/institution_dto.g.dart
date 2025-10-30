// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institution_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InstitutionDto _$InstitutionDtoFromJson(Map<String, dynamic> json) =>
    _InstitutionDto(
      id: json['id'] as String?,
      displayName: json['display_name'] as String?,
      ror: json['ror'] as String?,
      countryCode: json['country_code'] as String?,
      type: json['type'] as String?,
      lineage: (json['lineage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$InstitutionDtoToJson(_InstitutionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'ror': instance.ror,
      'country_code': instance.countryCode,
      'type': instance.type,
      'lineage': instance.lineage,
    };

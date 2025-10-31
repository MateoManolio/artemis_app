// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'institution_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_InstitutionDto _$InstitutionDtoFromJson(Map<String, dynamic> json) =>
    _InstitutionDto(
      id: json['id'] as String?,
      displayName: json['displayName'] as String?,
      ror: json['ror'] as String?,
      countryCode: json['countryCode'] as String?,
      type: json['type'] as String?,
      lineage: (json['lineage'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$InstitutionDtoToJson(_InstitutionDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'ror': instance.ror,
      'countryCode': instance.countryCode,
      'type': instance.type,
      'lineage': instance.lineage,
    };

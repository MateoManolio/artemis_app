// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affiliation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AffiliationDto _$AffiliationDtoFromJson(Map<String, dynamic> json) =>
    _AffiliationDto(
      rawAffiliationString: json['raw_affiliation_string'] as String?,
      institutionIds: (json['institution_ids'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AffiliationDtoToJson(_AffiliationDto instance) =>
    <String, dynamic>{
      'raw_affiliation_string': instance.rawAffiliationString,
      'institution_ids': instance.institutionIds,
    };

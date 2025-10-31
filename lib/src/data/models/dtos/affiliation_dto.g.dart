// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'affiliation_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AffiliationDto _$AffiliationDtoFromJson(Map<String, dynamic> json) =>
    _AffiliationDto(
      rawAffiliationString: json['rawAffiliationString'] as String?,
      institutionIds: (json['institutionIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$AffiliationDtoToJson(_AffiliationDto instance) =>
    <String, dynamic>{
      'rawAffiliationString': instance.rawAffiliationString,
      'institutionIds': instance.institutionIds,
    };

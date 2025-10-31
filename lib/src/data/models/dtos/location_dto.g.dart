// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) => _LocationDto(
  isOa: json['isOa'] as bool?,
  landingPageUrl: const UriConverter().fromJson(
    json['landingPageUrl'] as String?,
  ),
  pdfUrl: const UriConverter().fromJson(json['pdfUrl'] as String?),
  source: json['source'] == null
      ? null
      : SourceDto.fromJson(json['source'] as Map<String, dynamic>),
  license: json['license'] as String?,
  licenseId: const UriConverter().fromJson(json['licenseId'] as String?),
  version: json['version'] as String?,
  isAccepted: json['isAccepted'] as bool?,
  isPublished: json['isPublished'] as bool?,
);

Map<String, dynamic> _$LocationDtoToJson(_LocationDto instance) =>
    <String, dynamic>{
      'isOa': instance.isOa,
      'landingPageUrl': const UriConverter().toJson(instance.landingPageUrl),
      'pdfUrl': const UriConverter().toJson(instance.pdfUrl),
      'source': instance.source,
      'license': instance.license,
      'licenseId': const UriConverter().toJson(instance.licenseId),
      'version': instance.version,
      'isAccepted': instance.isAccepted,
      'isPublished': instance.isPublished,
    };

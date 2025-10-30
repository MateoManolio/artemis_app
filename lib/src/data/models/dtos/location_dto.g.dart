// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationDto _$LocationDtoFromJson(Map<String, dynamic> json) => _LocationDto(
  isOa: json['is_oa'] as bool?,
  landingPageUrl: const UriConverter().fromJson(
    json['landing_page_url'] as String?,
  ),
  pdfUrl: const UriConverter().fromJson(json['pdf_url'] as String?),
  source: json['source'] == null
      ? null
      : SourceDto.fromJson(json['source'] as Map<String, dynamic>),
  license: json['license'] as String?,
  licenseId: const UriConverter().fromJson(json['license_id'] as String?),
  version: json['version'] as String?,
  isAccepted: json['is_accepted'] as bool?,
  isPublished: json['is_published'] as bool?,
);

Map<String, dynamic> _$LocationDtoToJson(_LocationDto instance) =>
    <String, dynamic>{
      'is_oa': instance.isOa,
      'landing_page_url': const UriConverter().toJson(instance.landingPageUrl),
      'pdf_url': const UriConverter().toJson(instance.pdfUrl),
      'source': instance.source?.toJson(),
      'license': instance.license,
      'license_id': const UriConverter().toJson(instance.licenseId),
      'version': instance.version,
      'is_accepted': instance.isAccepted,
      'is_published': instance.isPublished,
    };

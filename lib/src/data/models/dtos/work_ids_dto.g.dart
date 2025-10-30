// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'work_ids_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_WorkIdsDto _$WorkIdsDtoFromJson(Map<String, dynamic> json) => _WorkIdsDto(
  openalex: json['openalex'] as String?,
  doi: const UriConverter().fromJson(json['doi'] as String?),
  mag: json['mag'] as String?,
  pmid: const UriConverter().fromJson(json['pmid'] as String?),
  pmcid: const UriConverter().fromJson(json['pmcid'] as String?),
);

Map<String, dynamic> _$WorkIdsDtoToJson(_WorkIdsDto instance) =>
    <String, dynamic>{
      'openalex': instance.openalex,
      'doi': const UriConverter().toJson(instance.doi),
      'mag': instance.mag,
      'pmid': const UriConverter().toJson(instance.pmid),
      'pmcid': const UriConverter().toJson(instance.pmcid),
    };

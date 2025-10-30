// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_access_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenAccessDto _$OpenAccessDtoFromJson(Map<String, dynamic> json) =>
    _OpenAccessDto(
      isOa: json['is_oa'] as bool?,
      oaStatus: json['oa_status'] as String?,
      oaUrl: const UriConverter().fromJson(json['oa_url'] as String?),
      anyRepositoryHasFulltext: json['any_repository_has_fulltext'] as bool?,
    );

Map<String, dynamic> _$OpenAccessDtoToJson(_OpenAccessDto instance) =>
    <String, dynamic>{
      'is_oa': instance.isOa,
      'oa_status': instance.oaStatus,
      'oa_url': const UriConverter().toJson(instance.oaUrl),
      'any_repository_has_fulltext': instance.anyRepositoryHasFulltext,
    };

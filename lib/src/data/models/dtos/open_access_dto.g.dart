// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'open_access_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_OpenAccessDto _$OpenAccessDtoFromJson(Map<String, dynamic> json) =>
    _OpenAccessDto(
      isOa: json['isOa'] as bool?,
      oaStatus: json['oaStatus'] as String?,
      oaUrl: const UriConverter().fromJson(json['oaUrl'] as String?),
      anyRepositoryHasFulltext: json['anyRepositoryHasFulltext'] as bool?,
    );

Map<String, dynamic> _$OpenAccessDtoToJson(_OpenAccessDto instance) =>
    <String, dynamic>{
      'isOa': instance.isOa,
      'oaStatus': instance.oaStatus,
      'oaUrl': const UriConverter().toJson(instance.oaUrl),
      'anyRepositoryHasFulltext': instance.anyRepositoryHasFulltext,
    };

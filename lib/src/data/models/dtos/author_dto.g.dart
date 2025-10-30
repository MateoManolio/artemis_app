// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'author_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AuthorDto _$AuthorDtoFromJson(Map<String, dynamic> json) => _AuthorDto(
  id: json['id'] as String?,
  displayName: json['display_name'] as String?,
  orcid: json['orcid'] as String?,
);

Map<String, dynamic> _$AuthorDtoToJson(_AuthorDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'display_name': instance.displayName,
      'orcid': instance.orcid,
    };

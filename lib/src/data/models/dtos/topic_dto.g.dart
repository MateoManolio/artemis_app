// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'topic_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_TopicDto _$TopicDtoFromJson(Map<String, dynamic> json) => _TopicDto(
  id: json['id'] as String?,
  displayName: json['displayName'] as String?,
  score: (json['score'] as num?)?.toDouble(),
  subfield: json['subfield'] == null
      ? null
      : TopicLevelDto.fromJson(json['subfield'] as Map<String, dynamic>),
  field: json['field'] == null
      ? null
      : TopicLevelDto.fromJson(json['field'] as Map<String, dynamic>),
  domain: json['domain'] == null
      ? null
      : TopicLevelDto.fromJson(json['domain'] as Map<String, dynamic>),
);

Map<String, dynamic> _$TopicDtoToJson(_TopicDto instance) => <String, dynamic>{
  'id': instance.id,
  'displayName': instance.displayName,
  'score': instance.score,
  'subfield': instance.subfield,
  'field': instance.field,
  'domain': instance.domain,
};

_TopicLevelDto _$TopicLevelDtoFromJson(Map<String, dynamic> json) =>
    _TopicLevelDto(
      id: json['id'] as String?,
      displayName: json['displayName'] as String?,
    );

Map<String, dynamic> _$TopicLevelDtoToJson(_TopicLevelDto instance) =>
    <String, dynamic>{'id': instance.id, 'displayName': instance.displayName};

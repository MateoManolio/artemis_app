// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'keyword_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_KeywordDto _$KeywordDtoFromJson(Map<String, dynamic> json) => _KeywordDto(
  id: json['id'] as String?,
  displayName: json['displayName'] as String?,
  score: (json['score'] as num?)?.toDouble(),
);

Map<String, dynamic> _$KeywordDtoToJson(_KeywordDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'displayName': instance.displayName,
      'score': instance.score,
    };

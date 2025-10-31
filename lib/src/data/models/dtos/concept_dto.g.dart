// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'concept_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ConceptDto _$ConceptDtoFromJson(Map<String, dynamic> json) => _ConceptDto(
  id: json['id'] as String?,
  wikidata: json['wikidata'] as String?,
  displayName: json['displayName'] as String?,
  level: (json['level'] as num?)?.toInt(),
  score: (json['score'] as num?)?.toDouble(),
);

Map<String, dynamic> _$ConceptDtoToJson(_ConceptDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'wikidata': instance.wikidata,
      'displayName': instance.displayName,
      'level': instance.level,
      'score': instance.score,
    };

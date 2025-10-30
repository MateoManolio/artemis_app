// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'count_by_year_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CountByYearDto _$CountByYearDtoFromJson(Map<String, dynamic> json) =>
    _CountByYearDto(
      year: (json['year'] as num?)?.toInt(),
      citedByCount: (json['cited_by_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$CountByYearDtoToJson(_CountByYearDto instance) =>
    <String, dynamic>{
      'year': instance.year,
      'cited_by_count': instance.citedByCount,
    };

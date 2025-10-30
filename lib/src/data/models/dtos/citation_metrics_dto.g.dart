// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citation_metrics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CitationNormalizedPercentileDto _$CitationNormalizedPercentileDtoFromJson(
  Map<String, dynamic> json,
) => _CitationNormalizedPercentileDto(
  value: (json['value'] as num?)?.toDouble(),
  isInTop1Percent: json['is_in_top1_percent'] as bool?,
  isInTop10Percent: json['is_in_top10_percent'] as bool?,
);

Map<String, dynamic> _$CitationNormalizedPercentileDtoToJson(
  _CitationNormalizedPercentileDto instance,
) => <String, dynamic>{
  'value': instance.value,
  'is_in_top1_percent': instance.isInTop1Percent,
  'is_in_top10_percent': instance.isInTop10Percent,
};

_IntRangeDto _$IntRangeDtoFromJson(Map<String, dynamic> json) => _IntRangeDto(
  min: (json['min'] as num?)?.toInt(),
  max: (json['max'] as num?)?.toInt(),
);

Map<String, dynamic> _$IntRangeDtoToJson(_IntRangeDto instance) =>
    <String, dynamic>{'min': instance.min, 'max': instance.max};

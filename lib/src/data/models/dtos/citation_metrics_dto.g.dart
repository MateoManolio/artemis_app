// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'citation_metrics_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CitationNormalizedPercentileDto _$CitationNormalizedPercentileDtoFromJson(
  Map<String, dynamic> json,
) => _CitationNormalizedPercentileDto(
  value: (json['value'] as num?)?.toDouble(),
  isInTop1Percent: json['isInTop1Percent'] as bool?,
  isInTop10Percent: json['isInTop10Percent'] as bool?,
);

Map<String, dynamic> _$CitationNormalizedPercentileDtoToJson(
  _CitationNormalizedPercentileDto instance,
) => <String, dynamic>{
  'value': instance.value,
  'isInTop1Percent': instance.isInTop1Percent,
  'isInTop10Percent': instance.isInTop10Percent,
};

_IntRangeDto _$IntRangeDtoFromJson(Map<String, dynamic> json) => _IntRangeDto(
  min: (json['min'] as num?)?.toInt(),
  max: (json['max'] as num?)?.toInt(),
);

Map<String, dynamic> _$IntRangeDtoToJson(_IntRangeDto instance) =>
    <String, dynamic>{'min': instance.min, 'max': instance.max};

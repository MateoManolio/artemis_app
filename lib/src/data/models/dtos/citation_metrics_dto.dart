import 'package:freezed_annotation/freezed_annotation.dart';

part 'citation_metrics_dto.freezed.dart';
part 'citation_metrics_dto.g.dart';

@freezed
sealed class CitationNormalizedPercentileDto
    with _$CitationNormalizedPercentileDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory CitationNormalizedPercentileDto({
    double? value,
    bool? isInTop1Percent,
    bool? isInTop10Percent,
  }) = _CitationNormalizedPercentileDto;

  factory CitationNormalizedPercentileDto.fromJson(Map<String, dynamic> json) =>
      _$CitationNormalizedPercentileDtoFromJson(json);
}

@freezed
sealed class IntRangeDto with _$IntRangeDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory IntRangeDto({int? min, int? max}) = _IntRangeDto;

  factory IntRangeDto.fromJson(Map<String, dynamic> json) =>
      _$IntRangeDtoFromJson(json);
}

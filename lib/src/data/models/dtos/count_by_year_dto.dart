import 'package:freezed_annotation/freezed_annotation.dart';

part 'count_by_year_dto.freezed.dart';
part 'count_by_year_dto.g.dart';

@freezed
sealed class CountByYearDto with _$CountByYearDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory CountByYearDto({int? year, int? citedByCount}) = _CountByYearDto;

  factory CountByYearDto.fromJson(Map<String, dynamic> json) =>
      _$CountByYearDtoFromJson(json);
}

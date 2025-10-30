import 'package:freezed_annotation/freezed_annotation.dart';

part 'affiliation_dto.freezed.dart';
part 'affiliation_dto.g.dart';

@freezed
sealed class AffiliationDto with _$AffiliationDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory AffiliationDto({
    String? rawAffiliationString,
    List<String>? institutionIds,
  }) = _AffiliationDto;

  factory AffiliationDto.fromJson(Map<String, dynamic> json) =>
      _$AffiliationDtoFromJson(json);
}

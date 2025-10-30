import 'package:freezed_annotation/freezed_annotation.dart';

part 'institution_dto.freezed.dart';
part 'institution_dto.g.dart';

@freezed
sealed class InstitutionDto with _$InstitutionDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory InstitutionDto({
    String? id,
    String? displayName,
    String? ror,
    String? countryCode,
    String? type,
    List<String>? lineage,
  }) = _InstitutionDto;

  factory InstitutionDto.fromJson(Map<String, dynamic> json) =>
      _$InstitutionDtoFromJson(json);
}

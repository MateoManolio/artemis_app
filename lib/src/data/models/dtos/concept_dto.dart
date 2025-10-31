import 'package:freezed_annotation/freezed_annotation.dart';

part 'concept_dto.freezed.dart';
part 'concept_dto.g.dart';

@freezed
sealed class ConceptDto with _$ConceptDto {
  const factory ConceptDto({
    String? id,
    String? wikidata,
    String? displayName,
    int? level,
    double? score,
  }) = _ConceptDto;

  factory ConceptDto.fromJson(Map<String, dynamic> json) =>
      _$ConceptDtoFromJson(json);
}

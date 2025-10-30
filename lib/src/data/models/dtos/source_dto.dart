import 'package:freezed_annotation/freezed_annotation.dart';

part 'source_dto.freezed.dart';
part 'source_dto.g.dart';

@freezed
sealed class SourceDto with _$SourceDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory SourceDto({
    String? id,
    String? displayName,
    String? issnL,
    List<String>? issn,
    bool? isOa,
    bool? isInDoaj,
    bool? isIndexedInScopus,
    bool? isCore,
    String? hostOrganization,
    String? hostOrganizationName,
    List<String>? hostOrganizationLineage,
    List<String>? hostOrganizationLineageNames,
    String? type,
  }) = _SourceDto;

  factory SourceDto.fromJson(Map<String, dynamic> json) =>
      _$SourceDtoFromJson(json);
}

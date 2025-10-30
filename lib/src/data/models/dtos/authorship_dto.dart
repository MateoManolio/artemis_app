import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:artemis_app/src/data/models/dtos/author_dto.dart';
import 'package:artemis_app/src/data/models/dtos/institution_dto.dart';
import 'package:artemis_app/src/data/models/dtos/affiliation_dto.dart';

part 'authorship_dto.freezed.dart';
part 'authorship_dto.g.dart';

@freezed
sealed class AuthorshipDto with _$AuthorshipDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory AuthorshipDto({
    String? authorPosition, // first/middle/last
    AuthorDto? author,
    List<InstitutionDto>? institutions,
    List<String>? countries,
    bool? isCorresponding,
    String? rawAuthorName,
    List<String>? rawAffiliationStrings,

    /// Campo nuevo documentado por OpenAlex: match de instituciones por afiliación.
    List<AffiliationDto>? affiliations,
  }) = _AuthorshipDto;

  factory AuthorshipDto.fromJson(Map<String, dynamic> json) =>
      _$AuthorshipDtoFromJson(json);
}

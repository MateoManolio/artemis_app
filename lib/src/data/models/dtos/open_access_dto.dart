import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:artemis_app/src/core/converters/uri_converter.dart';

part 'open_access_dto.freezed.dart';
part 'open_access_dto.g.dart';

@freezed
sealed class OpenAccessDto with _$OpenAccessDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory OpenAccessDto({
    bool? isOa,
    String? oaStatus,
    @UriConverter() Uri? oaUrl,
    bool? anyRepositoryHasFulltext,
  }) = _OpenAccessDto;

  factory OpenAccessDto.fromJson(Map<String, dynamic> json) =>
      _$OpenAccessDtoFromJson(json);
}

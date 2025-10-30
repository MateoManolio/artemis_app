import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:artemis_app/src/core/converters/uri_converter.dart';
import 'package:artemis_app/src/data/models/dtos/source_dto.dart';

part 'primary_location_dto.freezed.dart';
part 'primary_location_dto.g.dart';

@freezed
sealed class PrimaryLocationDto with _$PrimaryLocationDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory PrimaryLocationDto({
    bool? isOa,
    @UriConverter() Uri? landingPageUrl,
    @UriConverter() Uri? pdfUrl,
    SourceDto? source,
    String? license,
    @UriConverter() Uri? licenseId,
    String? version,
    bool? isAccepted,
    bool? isPublished,
  }) = _PrimaryLocationDto;

  factory PrimaryLocationDto.fromJson(Map<String, dynamic> json) =>
      _$PrimaryLocationDtoFromJson(json);
}

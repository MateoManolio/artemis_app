import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:artemis_app/src/core/converters/uri_converter.dart';
import 'package:artemis_app/src/data/models/dtos/source_dto.dart';

part 'location_dto.freezed.dart';
part 'location_dto.g.dart';

@freezed
sealed class LocationDto with _$LocationDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory LocationDto({
    bool? isOa,
    @UriConverter() Uri? landingPageUrl,
    @UriConverter() Uri? pdfUrl,
    SourceDto? source,
    String? license,
    @UriConverter() Uri? licenseId,
    String? version,
    bool? isAccepted,
    bool? isPublished,
  }) = _LocationDto;

  factory LocationDto.fromJson(Map<String, dynamic> json) =>
      _$LocationDtoFromJson(json);
}

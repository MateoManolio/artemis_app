import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:artemis_app/src/core/converters/uri_converter.dart';

part 'work_ids_dto.freezed.dart';
part 'work_ids_dto.g.dart';

@freezed
sealed class WorkIdsDto with _$WorkIdsDto {
  const factory WorkIdsDto({
    String? openalex,
    @UriConverter() Uri? doi,
    String? mag,
    @UriConverter() Uri? pmid,
    @UriConverter() Uri? pmcid,
  }) = _WorkIdsDto;

  factory WorkIdsDto.fromJson(Map<String, dynamic> json) =>
      _$WorkIdsDtoFromJson(json);
}

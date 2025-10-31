import 'package:freezed_annotation/freezed_annotation.dart';

part 'biblio_dto.freezed.dart';
part 'biblio_dto.g.dart';

@freezed
sealed class BiblioDto with _$BiblioDto {
  factory BiblioDto({
    String? volume,
    String? issue,
    String? firstPage,
    String? lastPage,
  }) = _BiblioDto;

  factory BiblioDto.fromJson(Map<String, dynamic> json) =>
      _$BiblioDtoFromJson(json);
}

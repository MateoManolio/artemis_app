import 'package:freezed_annotation/freezed_annotation.dart';

part 'author_dto.freezed.dart';
part 'author_dto.g.dart';

@freezed
sealed class AuthorDto with _$AuthorDto {
  factory AuthorDto({String? id, String? displayName, String? orcid}) =
      _AuthorDto;

  factory AuthorDto.fromJson(Map<String, dynamic> json) =>
      _$AuthorDtoFromJson(json);
}

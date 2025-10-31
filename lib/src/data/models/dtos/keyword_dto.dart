import 'package:freezed_annotation/freezed_annotation.dart';

part 'keyword_dto.freezed.dart';
part 'keyword_dto.g.dart';

@freezed
sealed class KeywordDto with _$KeywordDto {
  factory KeywordDto({String? id, String? displayName, double? score}) =
      _KeywordDto;

  factory KeywordDto.fromJson(Map<String, dynamic> json) =>
      _$KeywordDtoFromJson(json);
}

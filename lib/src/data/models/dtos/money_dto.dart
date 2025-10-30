import 'package:freezed_annotation/freezed_annotation.dart';

part 'money_dto.freezed.dart';
part 'money_dto.g.dart';

@freezed
sealed class MoneyDto with _$MoneyDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory MoneyDto({double? value, String? currency, double? valueUsd}) =
      _MoneyDto;

  factory MoneyDto.fromJson(Map<String, dynamic> json) =>
      _$MoneyDtoFromJson(json);
}

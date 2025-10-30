import 'package:freezed_annotation/freezed_annotation.dart';

part 'topic_dto.freezed.dart';
part 'topic_dto.g.dart';

@freezed
sealed class TopicDto with _$TopicDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TopicDto({
    String? id,
    String? displayName,
    double? score,
    TopicLevelDto? subfield,
    TopicLevelDto? field,
    TopicLevelDto? domain,
  }) = _TopicDto;

  factory TopicDto.fromJson(Map<String, dynamic> json) =>
      _$TopicDtoFromJson(json);
}

@freezed
sealed class TopicLevelDto with _$TopicLevelDto {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  const factory TopicLevelDto({String? id, String? displayName}) =
      _TopicLevelDto;

  factory TopicLevelDto.fromJson(Map<String, dynamic> json) =>
      _$TopicLevelDtoFromJson(json);
}

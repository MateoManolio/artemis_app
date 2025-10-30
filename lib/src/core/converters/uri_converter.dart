import 'package:freezed_annotation/freezed_annotation.dart';

class UriConverter implements JsonConverter<Uri?, String?> {
  const UriConverter();
  @override
  Uri? fromJson(String? json) =>
      (json == null || json.isEmpty) ? null : Uri.tryParse(json);
  @override
  String? toJson(Uri? object) => object?.toString();
}

import 'package:freezed_annotation/freezed_annotation.dart';

class AbstractInvertedIndexConverter
    implements JsonConverter<Map<String, List<int>>?, Map<String, dynamic>?> {
  const AbstractInvertedIndexConverter();

  @override
  Map<String, List<int>>? fromJson(Map<String, dynamic>? json) {
    if (json == null) return null;
    
    return json.map(
      (key, value) => MapEntry(
        key,
        (value as List<dynamic>?)
            ?.map((e) => (e as num?)?.toInt())
            .whereType<int>()
            .toList() ?? [],
      ),
    );
  }

  @override
  Map<String, dynamic>? toJson(Map<String, List<int>>? object) {
    if (object == null) return null;
    return object.map(
      (key, value) => MapEntry(key, value),
    );
  }
}


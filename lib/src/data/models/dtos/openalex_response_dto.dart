import 'package:freezed_annotation/freezed_annotation.dart';

part 'openalex_response_dto.freezed.dart';
part 'openalex_response_dto.g.dart';

/// Envoltorio genérico para respuestas paginadas de OpenAlex
/// E representa el tipo de cada item en `results` (por ej., Work).
@Freezed(genericArgumentFactories: true)
sealed class OpenAlexResponse<E> with _$OpenAlexResponse<E> {
  @JsonSerializable(
    fieldRename: FieldRename.snake,
    explicitToJson: true,
    genericArgumentFactories: true,
  )
  factory OpenAlexResponse({
    required OpenAlexMeta meta,
    required List<E> results,
    List<OpenAlexGroupBy>? groupBy,
  }) = _OpenAlexResponse<E>;

  factory OpenAlexResponse.fromJson(
    Map<String, dynamic> json,
    E Function(Object? json) fromJsonE,
  ) => _$OpenAlexResponseFromJson(json, fromJsonE);
}

/// Metadatos de paginación y tiempos de respuesta.
/// https://docs.openalex.org/how-to-use-the-api/get-lists-of-entities/paging
@freezed
sealed class OpenAlexMeta with _$OpenAlexMeta {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory OpenAlexMeta({
    required int count,
    int? dbResponseTimeMs,
    required int page,
    required int perPage,
    int? groupsCount,
  }) = _OpenAlexMeta;

  factory OpenAlexMeta.fromJson(Map<String, dynamic> json) =>
      _$OpenAlexMetaFromJson(json);
}

/// Resultado de agrupaciones (`group_by`) cuando se usa el parámetro
/// https://docs.openalex.org/api-entities/works/group-works
@freezed
sealed class OpenAlexGroupBy with _$OpenAlexGroupBy {
  @JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
  factory OpenAlexGroupBy({
    /// nombre del grupo (ej. "oa_status", "publication_year", etc.)
    String? key,

    /// valor del grupo (ej. "gold", "closed", "2025", etc.)
    dynamic keyDisplayName,

    /// conteo de elementos en el grupo
    int? count,

    /// filtros/resultados derivados que OpenAlex incluya
    Map<String, dynamic>? filter,

    /// campo raw por si OpenAlex devuelve estructuras nuevas
    Map<String, dynamic>? value,
  }) = _OpenAlexGroupBy;

  factory OpenAlexGroupBy.fromJson(Map<String, dynamic> json) =>
      _$OpenAlexGroupByFromJson(json);
}

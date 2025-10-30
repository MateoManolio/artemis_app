// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'biblio_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_BiblioDto _$BiblioDtoFromJson(Map<String, dynamic> json) => _BiblioDto(
  volume: json['volume'] as String?,
  issue: json['issue'] as String?,
  firstPage: json['first_page'] as String?,
  lastPage: json['last_page'] as String?,
);

Map<String, dynamic> _$BiblioDtoToJson(_BiblioDto instance) =>
    <String, dynamic>{
      'volume': instance.volume,
      'issue': instance.issue,
      'first_page': instance.firstPage,
      'last_page': instance.lastPage,
    };

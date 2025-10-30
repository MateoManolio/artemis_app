// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'money_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_MoneyDto _$MoneyDtoFromJson(Map<String, dynamic> json) => _MoneyDto(
  value: (json['value'] as num?)?.toDouble(),
  currency: json['currency'] as String?,
  valueUsd: (json['value_usd'] as num?)?.toDouble(),
);

Map<String, dynamic> _$MoneyDtoToJson(_MoneyDto instance) => <String, dynamic>{
  'value': instance.value,
  'currency': instance.currency,
  'value_usd': instance.valueUsd,
};

// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'money_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MoneyDto {

 double? get value; String? get currency; double? get valueUsd;
/// Create a copy of MoneyDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MoneyDtoCopyWith<MoneyDto> get copyWith => _$MoneyDtoCopyWithImpl<MoneyDto>(this as MoneyDto, _$identity);

  /// Serializes this MoneyDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MoneyDto&&(identical(other.value, value) || other.value == value)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.valueUsd, valueUsd) || other.valueUsd == valueUsd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,currency,valueUsd);

@override
String toString() {
  return 'MoneyDto(value: $value, currency: $currency, valueUsd: $valueUsd)';
}


}

/// @nodoc
abstract mixin class $MoneyDtoCopyWith<$Res>  {
  factory $MoneyDtoCopyWith(MoneyDto value, $Res Function(MoneyDto) _then) = _$MoneyDtoCopyWithImpl;
@useResult
$Res call({
 double? value, String? currency, double? valueUsd
});




}
/// @nodoc
class _$MoneyDtoCopyWithImpl<$Res>
    implements $MoneyDtoCopyWith<$Res> {
  _$MoneyDtoCopyWithImpl(this._self, this._then);

  final MoneyDto _self;
  final $Res Function(MoneyDto) _then;

/// Create a copy of MoneyDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? currency = freezed,Object? valueUsd = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,valueUsd: freezed == valueUsd ? _self.valueUsd : valueUsd // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [MoneyDto].
extension MoneyDtoPatterns on MoneyDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MoneyDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MoneyDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MoneyDto value)  $default,){
final _that = this;
switch (_that) {
case _MoneyDto():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MoneyDto value)?  $default,){
final _that = this;
switch (_that) {
case _MoneyDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? value,  String? currency,  double? valueUsd)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MoneyDto() when $default != null:
return $default(_that.value,_that.currency,_that.valueUsd);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? value,  String? currency,  double? valueUsd)  $default,) {final _that = this;
switch (_that) {
case _MoneyDto():
return $default(_that.value,_that.currency,_that.valueUsd);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? value,  String? currency,  double? valueUsd)?  $default,) {final _that = this;
switch (_that) {
case _MoneyDto() when $default != null:
return $default(_that.value,_that.currency,_that.valueUsd);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MoneyDto implements MoneyDto {
   _MoneyDto({this.value, this.currency, this.valueUsd});
  factory _MoneyDto.fromJson(Map<String, dynamic> json) => _$MoneyDtoFromJson(json);

@override final  double? value;
@override final  String? currency;
@override final  double? valueUsd;

/// Create a copy of MoneyDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MoneyDtoCopyWith<_MoneyDto> get copyWith => __$MoneyDtoCopyWithImpl<_MoneyDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MoneyDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MoneyDto&&(identical(other.value, value) || other.value == value)&&(identical(other.currency, currency) || other.currency == currency)&&(identical(other.valueUsd, valueUsd) || other.valueUsd == valueUsd));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,currency,valueUsd);

@override
String toString() {
  return 'MoneyDto(value: $value, currency: $currency, valueUsd: $valueUsd)';
}


}

/// @nodoc
abstract mixin class _$MoneyDtoCopyWith<$Res> implements $MoneyDtoCopyWith<$Res> {
  factory _$MoneyDtoCopyWith(_MoneyDto value, $Res Function(_MoneyDto) _then) = __$MoneyDtoCopyWithImpl;
@override @useResult
$Res call({
 double? value, String? currency, double? valueUsd
});




}
/// @nodoc
class __$MoneyDtoCopyWithImpl<$Res>
    implements _$MoneyDtoCopyWith<$Res> {
  __$MoneyDtoCopyWithImpl(this._self, this._then);

  final _MoneyDto _self;
  final $Res Function(_MoneyDto) _then;

/// Create a copy of MoneyDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? currency = freezed,Object? valueUsd = freezed,}) {
  return _then(_MoneyDto(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,currency: freezed == currency ? _self.currency : currency // ignore: cast_nullable_to_non_nullable
as String?,valueUsd: freezed == valueUsd ? _self.valueUsd : valueUsd // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on

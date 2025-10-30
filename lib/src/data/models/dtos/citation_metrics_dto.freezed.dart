// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'citation_metrics_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CitationNormalizedPercentileDto {

 double? get value; bool? get isInTop1Percent; bool? get isInTop10Percent;
/// Create a copy of CitationNormalizedPercentileDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CitationNormalizedPercentileDtoCopyWith<CitationNormalizedPercentileDto> get copyWith => _$CitationNormalizedPercentileDtoCopyWithImpl<CitationNormalizedPercentileDto>(this as CitationNormalizedPercentileDto, _$identity);

  /// Serializes this CitationNormalizedPercentileDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CitationNormalizedPercentileDto&&(identical(other.value, value) || other.value == value)&&(identical(other.isInTop1Percent, isInTop1Percent) || other.isInTop1Percent == isInTop1Percent)&&(identical(other.isInTop10Percent, isInTop10Percent) || other.isInTop10Percent == isInTop10Percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,isInTop1Percent,isInTop10Percent);

@override
String toString() {
  return 'CitationNormalizedPercentileDto(value: $value, isInTop1Percent: $isInTop1Percent, isInTop10Percent: $isInTop10Percent)';
}


}

/// @nodoc
abstract mixin class $CitationNormalizedPercentileDtoCopyWith<$Res>  {
  factory $CitationNormalizedPercentileDtoCopyWith(CitationNormalizedPercentileDto value, $Res Function(CitationNormalizedPercentileDto) _then) = _$CitationNormalizedPercentileDtoCopyWithImpl;
@useResult
$Res call({
 double? value, bool? isInTop1Percent, bool? isInTop10Percent
});




}
/// @nodoc
class _$CitationNormalizedPercentileDtoCopyWithImpl<$Res>
    implements $CitationNormalizedPercentileDtoCopyWith<$Res> {
  _$CitationNormalizedPercentileDtoCopyWithImpl(this._self, this._then);

  final CitationNormalizedPercentileDto _self;
  final $Res Function(CitationNormalizedPercentileDto) _then;

/// Create a copy of CitationNormalizedPercentileDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? value = freezed,Object? isInTop1Percent = freezed,Object? isInTop10Percent = freezed,}) {
  return _then(_self.copyWith(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,isInTop1Percent: freezed == isInTop1Percent ? _self.isInTop1Percent : isInTop1Percent // ignore: cast_nullable_to_non_nullable
as bool?,isInTop10Percent: freezed == isInTop10Percent ? _self.isInTop10Percent : isInTop10Percent // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [CitationNormalizedPercentileDto].
extension CitationNormalizedPercentileDtoPatterns on CitationNormalizedPercentileDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CitationNormalizedPercentileDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CitationNormalizedPercentileDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CitationNormalizedPercentileDto value)  $default,){
final _that = this;
switch (_that) {
case _CitationNormalizedPercentileDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CitationNormalizedPercentileDto value)?  $default,){
final _that = this;
switch (_that) {
case _CitationNormalizedPercentileDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( double? value,  bool? isInTop1Percent,  bool? isInTop10Percent)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CitationNormalizedPercentileDto() when $default != null:
return $default(_that.value,_that.isInTop1Percent,_that.isInTop10Percent);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( double? value,  bool? isInTop1Percent,  bool? isInTop10Percent)  $default,) {final _that = this;
switch (_that) {
case _CitationNormalizedPercentileDto():
return $default(_that.value,_that.isInTop1Percent,_that.isInTop10Percent);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( double? value,  bool? isInTop1Percent,  bool? isInTop10Percent)?  $default,) {final _that = this;
switch (_that) {
case _CitationNormalizedPercentileDto() when $default != null:
return $default(_that.value,_that.isInTop1Percent,_that.isInTop10Percent);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _CitationNormalizedPercentileDto implements CitationNormalizedPercentileDto {
  const _CitationNormalizedPercentileDto({this.value, this.isInTop1Percent, this.isInTop10Percent});
  factory _CitationNormalizedPercentileDto.fromJson(Map<String, dynamic> json) => _$CitationNormalizedPercentileDtoFromJson(json);

@override final  double? value;
@override final  bool? isInTop1Percent;
@override final  bool? isInTop10Percent;

/// Create a copy of CitationNormalizedPercentileDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CitationNormalizedPercentileDtoCopyWith<_CitationNormalizedPercentileDto> get copyWith => __$CitationNormalizedPercentileDtoCopyWithImpl<_CitationNormalizedPercentileDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CitationNormalizedPercentileDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CitationNormalizedPercentileDto&&(identical(other.value, value) || other.value == value)&&(identical(other.isInTop1Percent, isInTop1Percent) || other.isInTop1Percent == isInTop1Percent)&&(identical(other.isInTop10Percent, isInTop10Percent) || other.isInTop10Percent == isInTop10Percent));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,value,isInTop1Percent,isInTop10Percent);

@override
String toString() {
  return 'CitationNormalizedPercentileDto(value: $value, isInTop1Percent: $isInTop1Percent, isInTop10Percent: $isInTop10Percent)';
}


}

/// @nodoc
abstract mixin class _$CitationNormalizedPercentileDtoCopyWith<$Res> implements $CitationNormalizedPercentileDtoCopyWith<$Res> {
  factory _$CitationNormalizedPercentileDtoCopyWith(_CitationNormalizedPercentileDto value, $Res Function(_CitationNormalizedPercentileDto) _then) = __$CitationNormalizedPercentileDtoCopyWithImpl;
@override @useResult
$Res call({
 double? value, bool? isInTop1Percent, bool? isInTop10Percent
});




}
/// @nodoc
class __$CitationNormalizedPercentileDtoCopyWithImpl<$Res>
    implements _$CitationNormalizedPercentileDtoCopyWith<$Res> {
  __$CitationNormalizedPercentileDtoCopyWithImpl(this._self, this._then);

  final _CitationNormalizedPercentileDto _self;
  final $Res Function(_CitationNormalizedPercentileDto) _then;

/// Create a copy of CitationNormalizedPercentileDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? value = freezed,Object? isInTop1Percent = freezed,Object? isInTop10Percent = freezed,}) {
  return _then(_CitationNormalizedPercentileDto(
value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as double?,isInTop1Percent: freezed == isInTop1Percent ? _self.isInTop1Percent : isInTop1Percent // ignore: cast_nullable_to_non_nullable
as bool?,isInTop10Percent: freezed == isInTop10Percent ? _self.isInTop10Percent : isInTop10Percent // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}


/// @nodoc
mixin _$IntRangeDto {

 int? get min; int? get max;
/// Create a copy of IntRangeDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$IntRangeDtoCopyWith<IntRangeDto> get copyWith => _$IntRangeDtoCopyWithImpl<IntRangeDto>(this as IntRangeDto, _$identity);

  /// Serializes this IntRangeDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is IntRangeDto&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,min,max);

@override
String toString() {
  return 'IntRangeDto(min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class $IntRangeDtoCopyWith<$Res>  {
  factory $IntRangeDtoCopyWith(IntRangeDto value, $Res Function(IntRangeDto) _then) = _$IntRangeDtoCopyWithImpl;
@useResult
$Res call({
 int? min, int? max
});




}
/// @nodoc
class _$IntRangeDtoCopyWithImpl<$Res>
    implements $IntRangeDtoCopyWith<$Res> {
  _$IntRangeDtoCopyWithImpl(this._self, this._then);

  final IntRangeDto _self;
  final $Res Function(IntRangeDto) _then;

/// Create a copy of IntRangeDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? min = freezed,Object? max = freezed,}) {
  return _then(_self.copyWith(
min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [IntRangeDto].
extension IntRangeDtoPatterns on IntRangeDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _IntRangeDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _IntRangeDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _IntRangeDto value)  $default,){
final _that = this;
switch (_that) {
case _IntRangeDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _IntRangeDto value)?  $default,){
final _that = this;
switch (_that) {
case _IntRangeDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int? min,  int? max)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _IntRangeDto() when $default != null:
return $default(_that.min,_that.max);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int? min,  int? max)  $default,) {final _that = this;
switch (_that) {
case _IntRangeDto():
return $default(_that.min,_that.max);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int? min,  int? max)?  $default,) {final _that = this;
switch (_that) {
case _IntRangeDto() when $default != null:
return $default(_that.min,_that.max);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _IntRangeDto implements IntRangeDto {
  const _IntRangeDto({this.min, this.max});
  factory _IntRangeDto.fromJson(Map<String, dynamic> json) => _$IntRangeDtoFromJson(json);

@override final  int? min;
@override final  int? max;

/// Create a copy of IntRangeDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$IntRangeDtoCopyWith<_IntRangeDto> get copyWith => __$IntRangeDtoCopyWithImpl<_IntRangeDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$IntRangeDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _IntRangeDto&&(identical(other.min, min) || other.min == min)&&(identical(other.max, max) || other.max == max));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,min,max);

@override
String toString() {
  return 'IntRangeDto(min: $min, max: $max)';
}


}

/// @nodoc
abstract mixin class _$IntRangeDtoCopyWith<$Res> implements $IntRangeDtoCopyWith<$Res> {
  factory _$IntRangeDtoCopyWith(_IntRangeDto value, $Res Function(_IntRangeDto) _then) = __$IntRangeDtoCopyWithImpl;
@override @useResult
$Res call({
 int? min, int? max
});




}
/// @nodoc
class __$IntRangeDtoCopyWithImpl<$Res>
    implements _$IntRangeDtoCopyWith<$Res> {
  __$IntRangeDtoCopyWithImpl(this._self, this._then);

  final _IntRangeDto _self;
  final $Res Function(_IntRangeDto) _then;

/// Create a copy of IntRangeDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? min = freezed,Object? max = freezed,}) {
  return _then(_IntRangeDto(
min: freezed == min ? _self.min : min // ignore: cast_nullable_to_non_nullable
as int?,max: freezed == max ? _self.max : max // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on

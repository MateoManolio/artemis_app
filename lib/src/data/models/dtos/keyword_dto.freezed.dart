// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keyword_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeywordDto {

 String? get id; String? get displayName; double? get score;
/// Create a copy of KeywordDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$KeywordDtoCopyWith<KeywordDto> get copyWith => _$KeywordDtoCopyWithImpl<KeywordDto>(this as KeywordDto, _$identity);

  /// Serializes this KeywordDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is KeywordDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,score);

@override
String toString() {
  return 'KeywordDto(id: $id, displayName: $displayName, score: $score)';
}


}

/// @nodoc
abstract mixin class $KeywordDtoCopyWith<$Res>  {
  factory $KeywordDtoCopyWith(KeywordDto value, $Res Function(KeywordDto) _then) = _$KeywordDtoCopyWithImpl;
@useResult
$Res call({
 String? id, String? displayName, double? score
});




}
/// @nodoc
class _$KeywordDtoCopyWithImpl<$Res>
    implements $KeywordDtoCopyWith<$Res> {
  _$KeywordDtoCopyWithImpl(this._self, this._then);

  final KeywordDto _self;
  final $Res Function(KeywordDto) _then;

/// Create a copy of KeywordDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = freezed,Object? displayName = freezed,Object? score = freezed,}) {
  return _then(_self.copyWith(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}

}


/// Adds pattern-matching-related methods to [KeywordDto].
extension KeywordDtoPatterns on KeywordDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _KeywordDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _KeywordDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _KeywordDto value)  $default,){
final _that = this;
switch (_that) {
case _KeywordDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _KeywordDto value)?  $default,){
final _that = this;
switch (_that) {
case _KeywordDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? id,  String? displayName,  double? score)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _KeywordDto() when $default != null:
return $default(_that.id,_that.displayName,_that.score);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? id,  String? displayName,  double? score)  $default,) {final _that = this;
switch (_that) {
case _KeywordDto():
return $default(_that.id,_that.displayName,_that.score);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? id,  String? displayName,  double? score)?  $default,) {final _that = this;
switch (_that) {
case _KeywordDto() when $default != null:
return $default(_that.id,_that.displayName,_that.score);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _KeywordDto implements KeywordDto {
   _KeywordDto({this.id, this.displayName, this.score});
  factory _KeywordDto.fromJson(Map<String, dynamic> json) => _$KeywordDtoFromJson(json);

@override final  String? id;
@override final  String? displayName;
@override final  double? score;

/// Create a copy of KeywordDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$KeywordDtoCopyWith<_KeywordDto> get copyWith => __$KeywordDtoCopyWithImpl<_KeywordDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$KeywordDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _KeywordDto&&(identical(other.id, id) || other.id == id)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.score, score) || other.score == score));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,displayName,score);

@override
String toString() {
  return 'KeywordDto(id: $id, displayName: $displayName, score: $score)';
}


}

/// @nodoc
abstract mixin class _$KeywordDtoCopyWith<$Res> implements $KeywordDtoCopyWith<$Res> {
  factory _$KeywordDtoCopyWith(_KeywordDto value, $Res Function(_KeywordDto) _then) = __$KeywordDtoCopyWithImpl;
@override @useResult
$Res call({
 String? id, String? displayName, double? score
});




}
/// @nodoc
class __$KeywordDtoCopyWithImpl<$Res>
    implements _$KeywordDtoCopyWith<$Res> {
  __$KeywordDtoCopyWithImpl(this._self, this._then);

  final _KeywordDto _self;
  final $Res Function(_KeywordDto) _then;

/// Create a copy of KeywordDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = freezed,Object? displayName = freezed,Object? score = freezed,}) {
  return _then(_KeywordDto(
id: freezed == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String?,displayName: freezed == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String?,score: freezed == score ? _self.score : score // ignore: cast_nullable_to_non_nullable
as double?,
  ));
}


}

// dart format on

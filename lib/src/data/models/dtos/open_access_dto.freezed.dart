// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'open_access_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpenAccessDto {

 bool? get isOa; String? get oaStatus;@UriConverter() Uri? get oaUrl; bool? get anyRepositoryHasFulltext;
/// Create a copy of OpenAccessDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpenAccessDtoCopyWith<OpenAccessDto> get copyWith => _$OpenAccessDtoCopyWithImpl<OpenAccessDto>(this as OpenAccessDto, _$identity);

  /// Serializes this OpenAccessDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpenAccessDto&&(identical(other.isOa, isOa) || other.isOa == isOa)&&(identical(other.oaStatus, oaStatus) || other.oaStatus == oaStatus)&&(identical(other.oaUrl, oaUrl) || other.oaUrl == oaUrl)&&(identical(other.anyRepositoryHasFulltext, anyRepositoryHasFulltext) || other.anyRepositoryHasFulltext == anyRepositoryHasFulltext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isOa,oaStatus,oaUrl,anyRepositoryHasFulltext);

@override
String toString() {
  return 'OpenAccessDto(isOa: $isOa, oaStatus: $oaStatus, oaUrl: $oaUrl, anyRepositoryHasFulltext: $anyRepositoryHasFulltext)';
}


}

/// @nodoc
abstract mixin class $OpenAccessDtoCopyWith<$Res>  {
  factory $OpenAccessDtoCopyWith(OpenAccessDto value, $Res Function(OpenAccessDto) _then) = _$OpenAccessDtoCopyWithImpl;
@useResult
$Res call({
 bool? isOa, String? oaStatus,@UriConverter() Uri? oaUrl, bool? anyRepositoryHasFulltext
});




}
/// @nodoc
class _$OpenAccessDtoCopyWithImpl<$Res>
    implements $OpenAccessDtoCopyWith<$Res> {
  _$OpenAccessDtoCopyWithImpl(this._self, this._then);

  final OpenAccessDto _self;
  final $Res Function(OpenAccessDto) _then;

/// Create a copy of OpenAccessDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isOa = freezed,Object? oaStatus = freezed,Object? oaUrl = freezed,Object? anyRepositoryHasFulltext = freezed,}) {
  return _then(_self.copyWith(
isOa: freezed == isOa ? _self.isOa : isOa // ignore: cast_nullable_to_non_nullable
as bool?,oaStatus: freezed == oaStatus ? _self.oaStatus : oaStatus // ignore: cast_nullable_to_non_nullable
as String?,oaUrl: freezed == oaUrl ? _self.oaUrl : oaUrl // ignore: cast_nullable_to_non_nullable
as Uri?,anyRepositoryHasFulltext: freezed == anyRepositoryHasFulltext ? _self.anyRepositoryHasFulltext : anyRepositoryHasFulltext // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

}


/// Adds pattern-matching-related methods to [OpenAccessDto].
extension OpenAccessDtoPatterns on OpenAccessDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpenAccessDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpenAccessDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpenAccessDto value)  $default,){
final _that = this;
switch (_that) {
case _OpenAccessDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpenAccessDto value)?  $default,){
final _that = this;
switch (_that) {
case _OpenAccessDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? isOa,  String? oaStatus, @UriConverter()  Uri? oaUrl,  bool? anyRepositoryHasFulltext)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpenAccessDto() when $default != null:
return $default(_that.isOa,_that.oaStatus,_that.oaUrl,_that.anyRepositoryHasFulltext);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? isOa,  String? oaStatus, @UriConverter()  Uri? oaUrl,  bool? anyRepositoryHasFulltext)  $default,) {final _that = this;
switch (_that) {
case _OpenAccessDto():
return $default(_that.isOa,_that.oaStatus,_that.oaUrl,_that.anyRepositoryHasFulltext);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? isOa,  String? oaStatus, @UriConverter()  Uri? oaUrl,  bool? anyRepositoryHasFulltext)?  $default,) {final _that = this;
switch (_that) {
case _OpenAccessDto() when $default != null:
return $default(_that.isOa,_that.oaStatus,_that.oaUrl,_that.anyRepositoryHasFulltext);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OpenAccessDto implements OpenAccessDto {
  const _OpenAccessDto({this.isOa, this.oaStatus, @UriConverter() this.oaUrl, this.anyRepositoryHasFulltext});
  factory _OpenAccessDto.fromJson(Map<String, dynamic> json) => _$OpenAccessDtoFromJson(json);

@override final  bool? isOa;
@override final  String? oaStatus;
@override@UriConverter() final  Uri? oaUrl;
@override final  bool? anyRepositoryHasFulltext;

/// Create a copy of OpenAccessDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpenAccessDtoCopyWith<_OpenAccessDto> get copyWith => __$OpenAccessDtoCopyWithImpl<_OpenAccessDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpenAccessDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpenAccessDto&&(identical(other.isOa, isOa) || other.isOa == isOa)&&(identical(other.oaStatus, oaStatus) || other.oaStatus == oaStatus)&&(identical(other.oaUrl, oaUrl) || other.oaUrl == oaUrl)&&(identical(other.anyRepositoryHasFulltext, anyRepositoryHasFulltext) || other.anyRepositoryHasFulltext == anyRepositoryHasFulltext));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isOa,oaStatus,oaUrl,anyRepositoryHasFulltext);

@override
String toString() {
  return 'OpenAccessDto(isOa: $isOa, oaStatus: $oaStatus, oaUrl: $oaUrl, anyRepositoryHasFulltext: $anyRepositoryHasFulltext)';
}


}

/// @nodoc
abstract mixin class _$OpenAccessDtoCopyWith<$Res> implements $OpenAccessDtoCopyWith<$Res> {
  factory _$OpenAccessDtoCopyWith(_OpenAccessDto value, $Res Function(_OpenAccessDto) _then) = __$OpenAccessDtoCopyWithImpl;
@override @useResult
$Res call({
 bool? isOa, String? oaStatus,@UriConverter() Uri? oaUrl, bool? anyRepositoryHasFulltext
});




}
/// @nodoc
class __$OpenAccessDtoCopyWithImpl<$Res>
    implements _$OpenAccessDtoCopyWith<$Res> {
  __$OpenAccessDtoCopyWithImpl(this._self, this._then);

  final _OpenAccessDto _self;
  final $Res Function(_OpenAccessDto) _then;

/// Create a copy of OpenAccessDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isOa = freezed,Object? oaStatus = freezed,Object? oaUrl = freezed,Object? anyRepositoryHasFulltext = freezed,}) {
  return _then(_OpenAccessDto(
isOa: freezed == isOa ? _self.isOa : isOa // ignore: cast_nullable_to_non_nullable
as bool?,oaStatus: freezed == oaStatus ? _self.oaStatus : oaStatus // ignore: cast_nullable_to_non_nullable
as String?,oaUrl: freezed == oaUrl ? _self.oaUrl : oaUrl // ignore: cast_nullable_to_non_nullable
as Uri?,anyRepositoryHasFulltext: freezed == anyRepositoryHasFulltext ? _self.anyRepositoryHasFulltext : anyRepositoryHasFulltext // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}


}

// dart format on

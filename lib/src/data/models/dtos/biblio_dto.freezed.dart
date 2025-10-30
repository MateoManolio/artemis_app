// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'biblio_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$BiblioDto {

 String? get volume; String? get issue; String? get firstPage; String? get lastPage;
/// Create a copy of BiblioDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BiblioDtoCopyWith<BiblioDto> get copyWith => _$BiblioDtoCopyWithImpl<BiblioDto>(this as BiblioDto, _$identity);

  /// Serializes this BiblioDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BiblioDto&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.issue, issue) || other.issue == issue)&&(identical(other.firstPage, firstPage) || other.firstPage == firstPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,volume,issue,firstPage,lastPage);

@override
String toString() {
  return 'BiblioDto(volume: $volume, issue: $issue, firstPage: $firstPage, lastPage: $lastPage)';
}


}

/// @nodoc
abstract mixin class $BiblioDtoCopyWith<$Res>  {
  factory $BiblioDtoCopyWith(BiblioDto value, $Res Function(BiblioDto) _then) = _$BiblioDtoCopyWithImpl;
@useResult
$Res call({
 String? volume, String? issue, String? firstPage, String? lastPage
});




}
/// @nodoc
class _$BiblioDtoCopyWithImpl<$Res>
    implements $BiblioDtoCopyWith<$Res> {
  _$BiblioDtoCopyWithImpl(this._self, this._then);

  final BiblioDto _self;
  final $Res Function(BiblioDto) _then;

/// Create a copy of BiblioDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? volume = freezed,Object? issue = freezed,Object? firstPage = freezed,Object? lastPage = freezed,}) {
  return _then(_self.copyWith(
volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String?,issue: freezed == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as String?,firstPage: freezed == firstPage ? _self.firstPage : firstPage // ignore: cast_nullable_to_non_nullable
as String?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [BiblioDto].
extension BiblioDtoPatterns on BiblioDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _BiblioDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _BiblioDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _BiblioDto value)  $default,){
final _that = this;
switch (_that) {
case _BiblioDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _BiblioDto value)?  $default,){
final _that = this;
switch (_that) {
case _BiblioDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? volume,  String? issue,  String? firstPage,  String? lastPage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _BiblioDto() when $default != null:
return $default(_that.volume,_that.issue,_that.firstPage,_that.lastPage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? volume,  String? issue,  String? firstPage,  String? lastPage)  $default,) {final _that = this;
switch (_that) {
case _BiblioDto():
return $default(_that.volume,_that.issue,_that.firstPage,_that.lastPage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? volume,  String? issue,  String? firstPage,  String? lastPage)?  $default,) {final _that = this;
switch (_that) {
case _BiblioDto() when $default != null:
return $default(_that.volume,_that.issue,_that.firstPage,_that.lastPage);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _BiblioDto implements BiblioDto {
   _BiblioDto({this.volume, this.issue, this.firstPage, this.lastPage});
  factory _BiblioDto.fromJson(Map<String, dynamic> json) => _$BiblioDtoFromJson(json);

@override final  String? volume;
@override final  String? issue;
@override final  String? firstPage;
@override final  String? lastPage;

/// Create a copy of BiblioDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$BiblioDtoCopyWith<_BiblioDto> get copyWith => __$BiblioDtoCopyWithImpl<_BiblioDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$BiblioDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _BiblioDto&&(identical(other.volume, volume) || other.volume == volume)&&(identical(other.issue, issue) || other.issue == issue)&&(identical(other.firstPage, firstPage) || other.firstPage == firstPage)&&(identical(other.lastPage, lastPage) || other.lastPage == lastPage));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,volume,issue,firstPage,lastPage);

@override
String toString() {
  return 'BiblioDto(volume: $volume, issue: $issue, firstPage: $firstPage, lastPage: $lastPage)';
}


}

/// @nodoc
abstract mixin class _$BiblioDtoCopyWith<$Res> implements $BiblioDtoCopyWith<$Res> {
  factory _$BiblioDtoCopyWith(_BiblioDto value, $Res Function(_BiblioDto) _then) = __$BiblioDtoCopyWithImpl;
@override @useResult
$Res call({
 String? volume, String? issue, String? firstPage, String? lastPage
});




}
/// @nodoc
class __$BiblioDtoCopyWithImpl<$Res>
    implements _$BiblioDtoCopyWith<$Res> {
  __$BiblioDtoCopyWithImpl(this._self, this._then);

  final _BiblioDto _self;
  final $Res Function(_BiblioDto) _then;

/// Create a copy of BiblioDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? volume = freezed,Object? issue = freezed,Object? firstPage = freezed,Object? lastPage = freezed,}) {
  return _then(_BiblioDto(
volume: freezed == volume ? _self.volume : volume // ignore: cast_nullable_to_non_nullable
as String?,issue: freezed == issue ? _self.issue : issue // ignore: cast_nullable_to_non_nullable
as String?,firstPage: freezed == firstPage ? _self.firstPage : firstPage // ignore: cast_nullable_to_non_nullable
as String?,lastPage: freezed == lastPage ? _self.lastPage : lastPage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

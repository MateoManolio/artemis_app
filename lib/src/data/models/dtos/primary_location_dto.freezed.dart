// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'primary_location_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PrimaryLocationDto {

 bool? get isOa;@UriConverter() Uri? get landingPageUrl;@UriConverter() Uri? get pdfUrl; SourceDto? get source; String? get license;@UriConverter() Uri? get licenseId; String? get version; bool? get isAccepted; bool? get isPublished;
/// Create a copy of PrimaryLocationDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PrimaryLocationDtoCopyWith<PrimaryLocationDto> get copyWith => _$PrimaryLocationDtoCopyWithImpl<PrimaryLocationDto>(this as PrimaryLocationDto, _$identity);

  /// Serializes this PrimaryLocationDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PrimaryLocationDto&&(identical(other.isOa, isOa) || other.isOa == isOa)&&(identical(other.landingPageUrl, landingPageUrl) || other.landingPageUrl == landingPageUrl)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.license, license) || other.license == license)&&(identical(other.licenseId, licenseId) || other.licenseId == licenseId)&&(identical(other.version, version) || other.version == version)&&(identical(other.isAccepted, isAccepted) || other.isAccepted == isAccepted)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isOa,landingPageUrl,pdfUrl,source,license,licenseId,version,isAccepted,isPublished);

@override
String toString() {
  return 'PrimaryLocationDto(isOa: $isOa, landingPageUrl: $landingPageUrl, pdfUrl: $pdfUrl, source: $source, license: $license, licenseId: $licenseId, version: $version, isAccepted: $isAccepted, isPublished: $isPublished)';
}


}

/// @nodoc
abstract mixin class $PrimaryLocationDtoCopyWith<$Res>  {
  factory $PrimaryLocationDtoCopyWith(PrimaryLocationDto value, $Res Function(PrimaryLocationDto) _then) = _$PrimaryLocationDtoCopyWithImpl;
@useResult
$Res call({
 bool? isOa,@UriConverter() Uri? landingPageUrl,@UriConverter() Uri? pdfUrl, SourceDto? source, String? license,@UriConverter() Uri? licenseId, String? version, bool? isAccepted, bool? isPublished
});


$SourceDtoCopyWith<$Res>? get source;

}
/// @nodoc
class _$PrimaryLocationDtoCopyWithImpl<$Res>
    implements $PrimaryLocationDtoCopyWith<$Res> {
  _$PrimaryLocationDtoCopyWithImpl(this._self, this._then);

  final PrimaryLocationDto _self;
  final $Res Function(PrimaryLocationDto) _then;

/// Create a copy of PrimaryLocationDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? isOa = freezed,Object? landingPageUrl = freezed,Object? pdfUrl = freezed,Object? source = freezed,Object? license = freezed,Object? licenseId = freezed,Object? version = freezed,Object? isAccepted = freezed,Object? isPublished = freezed,}) {
  return _then(_self.copyWith(
isOa: freezed == isOa ? _self.isOa : isOa // ignore: cast_nullable_to_non_nullable
as bool?,landingPageUrl: freezed == landingPageUrl ? _self.landingPageUrl : landingPageUrl // ignore: cast_nullable_to_non_nullable
as Uri?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as Uri?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as SourceDto?,license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String?,licenseId: freezed == licenseId ? _self.licenseId : licenseId // ignore: cast_nullable_to_non_nullable
as Uri?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,isAccepted: freezed == isAccepted ? _self.isAccepted : isAccepted // ignore: cast_nullable_to_non_nullable
as bool?,isPublished: freezed == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}
/// Create a copy of PrimaryLocationDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceDtoCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $SourceDtoCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}


/// Adds pattern-matching-related methods to [PrimaryLocationDto].
extension PrimaryLocationDtoPatterns on PrimaryLocationDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PrimaryLocationDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PrimaryLocationDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PrimaryLocationDto value)  $default,){
final _that = this;
switch (_that) {
case _PrimaryLocationDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PrimaryLocationDto value)?  $default,){
final _that = this;
switch (_that) {
case _PrimaryLocationDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( bool? isOa, @UriConverter()  Uri? landingPageUrl, @UriConverter()  Uri? pdfUrl,  SourceDto? source,  String? license, @UriConverter()  Uri? licenseId,  String? version,  bool? isAccepted,  bool? isPublished)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PrimaryLocationDto() when $default != null:
return $default(_that.isOa,_that.landingPageUrl,_that.pdfUrl,_that.source,_that.license,_that.licenseId,_that.version,_that.isAccepted,_that.isPublished);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( bool? isOa, @UriConverter()  Uri? landingPageUrl, @UriConverter()  Uri? pdfUrl,  SourceDto? source,  String? license, @UriConverter()  Uri? licenseId,  String? version,  bool? isAccepted,  bool? isPublished)  $default,) {final _that = this;
switch (_that) {
case _PrimaryLocationDto():
return $default(_that.isOa,_that.landingPageUrl,_that.pdfUrl,_that.source,_that.license,_that.licenseId,_that.version,_that.isAccepted,_that.isPublished);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( bool? isOa, @UriConverter()  Uri? landingPageUrl, @UriConverter()  Uri? pdfUrl,  SourceDto? source,  String? license, @UriConverter()  Uri? licenseId,  String? version,  bool? isAccepted,  bool? isPublished)?  $default,) {final _that = this;
switch (_that) {
case _PrimaryLocationDto() when $default != null:
return $default(_that.isOa,_that.landingPageUrl,_that.pdfUrl,_that.source,_that.license,_that.licenseId,_that.version,_that.isAccepted,_that.isPublished);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PrimaryLocationDto implements PrimaryLocationDto {
  const _PrimaryLocationDto({this.isOa, @UriConverter() this.landingPageUrl, @UriConverter() this.pdfUrl, this.source, this.license, @UriConverter() this.licenseId, this.version, this.isAccepted, this.isPublished});
  factory _PrimaryLocationDto.fromJson(Map<String, dynamic> json) => _$PrimaryLocationDtoFromJson(json);

@override final  bool? isOa;
@override@UriConverter() final  Uri? landingPageUrl;
@override@UriConverter() final  Uri? pdfUrl;
@override final  SourceDto? source;
@override final  String? license;
@override@UriConverter() final  Uri? licenseId;
@override final  String? version;
@override final  bool? isAccepted;
@override final  bool? isPublished;

/// Create a copy of PrimaryLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PrimaryLocationDtoCopyWith<_PrimaryLocationDto> get copyWith => __$PrimaryLocationDtoCopyWithImpl<_PrimaryLocationDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PrimaryLocationDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PrimaryLocationDto&&(identical(other.isOa, isOa) || other.isOa == isOa)&&(identical(other.landingPageUrl, landingPageUrl) || other.landingPageUrl == landingPageUrl)&&(identical(other.pdfUrl, pdfUrl) || other.pdfUrl == pdfUrl)&&(identical(other.source, source) || other.source == source)&&(identical(other.license, license) || other.license == license)&&(identical(other.licenseId, licenseId) || other.licenseId == licenseId)&&(identical(other.version, version) || other.version == version)&&(identical(other.isAccepted, isAccepted) || other.isAccepted == isAccepted)&&(identical(other.isPublished, isPublished) || other.isPublished == isPublished));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,isOa,landingPageUrl,pdfUrl,source,license,licenseId,version,isAccepted,isPublished);

@override
String toString() {
  return 'PrimaryLocationDto(isOa: $isOa, landingPageUrl: $landingPageUrl, pdfUrl: $pdfUrl, source: $source, license: $license, licenseId: $licenseId, version: $version, isAccepted: $isAccepted, isPublished: $isPublished)';
}


}

/// @nodoc
abstract mixin class _$PrimaryLocationDtoCopyWith<$Res> implements $PrimaryLocationDtoCopyWith<$Res> {
  factory _$PrimaryLocationDtoCopyWith(_PrimaryLocationDto value, $Res Function(_PrimaryLocationDto) _then) = __$PrimaryLocationDtoCopyWithImpl;
@override @useResult
$Res call({
 bool? isOa,@UriConverter() Uri? landingPageUrl,@UriConverter() Uri? pdfUrl, SourceDto? source, String? license,@UriConverter() Uri? licenseId, String? version, bool? isAccepted, bool? isPublished
});


@override $SourceDtoCopyWith<$Res>? get source;

}
/// @nodoc
class __$PrimaryLocationDtoCopyWithImpl<$Res>
    implements _$PrimaryLocationDtoCopyWith<$Res> {
  __$PrimaryLocationDtoCopyWithImpl(this._self, this._then);

  final _PrimaryLocationDto _self;
  final $Res Function(_PrimaryLocationDto) _then;

/// Create a copy of PrimaryLocationDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? isOa = freezed,Object? landingPageUrl = freezed,Object? pdfUrl = freezed,Object? source = freezed,Object? license = freezed,Object? licenseId = freezed,Object? version = freezed,Object? isAccepted = freezed,Object? isPublished = freezed,}) {
  return _then(_PrimaryLocationDto(
isOa: freezed == isOa ? _self.isOa : isOa // ignore: cast_nullable_to_non_nullable
as bool?,landingPageUrl: freezed == landingPageUrl ? _self.landingPageUrl : landingPageUrl // ignore: cast_nullable_to_non_nullable
as Uri?,pdfUrl: freezed == pdfUrl ? _self.pdfUrl : pdfUrl // ignore: cast_nullable_to_non_nullable
as Uri?,source: freezed == source ? _self.source : source // ignore: cast_nullable_to_non_nullable
as SourceDto?,license: freezed == license ? _self.license : license // ignore: cast_nullable_to_non_nullable
as String?,licenseId: freezed == licenseId ? _self.licenseId : licenseId // ignore: cast_nullable_to_non_nullable
as Uri?,version: freezed == version ? _self.version : version // ignore: cast_nullable_to_non_nullable
as String?,isAccepted: freezed == isAccepted ? _self.isAccepted : isAccepted // ignore: cast_nullable_to_non_nullable
as bool?,isPublished: freezed == isPublished ? _self.isPublished : isPublished // ignore: cast_nullable_to_non_nullable
as bool?,
  ));
}

/// Create a copy of PrimaryLocationDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SourceDtoCopyWith<$Res>? get source {
    if (_self.source == null) {
    return null;
  }

  return $SourceDtoCopyWith<$Res>(_self.source!, (value) {
    return _then(_self.copyWith(source: value));
  });
}
}

// dart format on

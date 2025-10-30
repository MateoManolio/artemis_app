// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'authorship_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AuthorshipDto {

 String? get authorPosition;// first/middle/last
 AuthorDto? get author; List<InstitutionDto>? get institutions; List<String>? get countries; bool? get isCorresponding; String? get rawAuthorName; List<String>? get rawAffiliationStrings;/// Campo nuevo documentado por OpenAlex: match de instituciones por afiliación.
 List<AffiliationDto>? get affiliations;
/// Create a copy of AuthorshipDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthorshipDtoCopyWith<AuthorshipDto> get copyWith => _$AuthorshipDtoCopyWithImpl<AuthorshipDto>(this as AuthorshipDto, _$identity);

  /// Serializes this AuthorshipDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthorshipDto&&(identical(other.authorPosition, authorPosition) || other.authorPosition == authorPosition)&&(identical(other.author, author) || other.author == author)&&const DeepCollectionEquality().equals(other.institutions, institutions)&&const DeepCollectionEquality().equals(other.countries, countries)&&(identical(other.isCorresponding, isCorresponding) || other.isCorresponding == isCorresponding)&&(identical(other.rawAuthorName, rawAuthorName) || other.rawAuthorName == rawAuthorName)&&const DeepCollectionEquality().equals(other.rawAffiliationStrings, rawAffiliationStrings)&&const DeepCollectionEquality().equals(other.affiliations, affiliations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authorPosition,author,const DeepCollectionEquality().hash(institutions),const DeepCollectionEquality().hash(countries),isCorresponding,rawAuthorName,const DeepCollectionEquality().hash(rawAffiliationStrings),const DeepCollectionEquality().hash(affiliations));

@override
String toString() {
  return 'AuthorshipDto(authorPosition: $authorPosition, author: $author, institutions: $institutions, countries: $countries, isCorresponding: $isCorresponding, rawAuthorName: $rawAuthorName, rawAffiliationStrings: $rawAffiliationStrings, affiliations: $affiliations)';
}


}

/// @nodoc
abstract mixin class $AuthorshipDtoCopyWith<$Res>  {
  factory $AuthorshipDtoCopyWith(AuthorshipDto value, $Res Function(AuthorshipDto) _then) = _$AuthorshipDtoCopyWithImpl;
@useResult
$Res call({
 String? authorPosition, AuthorDto? author, List<InstitutionDto>? institutions, List<String>? countries, bool? isCorresponding, String? rawAuthorName, List<String>? rawAffiliationStrings, List<AffiliationDto>? affiliations
});


$AuthorDtoCopyWith<$Res>? get author;

}
/// @nodoc
class _$AuthorshipDtoCopyWithImpl<$Res>
    implements $AuthorshipDtoCopyWith<$Res> {
  _$AuthorshipDtoCopyWithImpl(this._self, this._then);

  final AuthorshipDto _self;
  final $Res Function(AuthorshipDto) _then;

/// Create a copy of AuthorshipDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? authorPosition = freezed,Object? author = freezed,Object? institutions = freezed,Object? countries = freezed,Object? isCorresponding = freezed,Object? rawAuthorName = freezed,Object? rawAffiliationStrings = freezed,Object? affiliations = freezed,}) {
  return _then(_self.copyWith(
authorPosition: freezed == authorPosition ? _self.authorPosition : authorPosition // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorDto?,institutions: freezed == institutions ? _self.institutions : institutions // ignore: cast_nullable_to_non_nullable
as List<InstitutionDto>?,countries: freezed == countries ? _self.countries : countries // ignore: cast_nullable_to_non_nullable
as List<String>?,isCorresponding: freezed == isCorresponding ? _self.isCorresponding : isCorresponding // ignore: cast_nullable_to_non_nullable
as bool?,rawAuthorName: freezed == rawAuthorName ? _self.rawAuthorName : rawAuthorName // ignore: cast_nullable_to_non_nullable
as String?,rawAffiliationStrings: freezed == rawAffiliationStrings ? _self.rawAffiliationStrings : rawAffiliationStrings // ignore: cast_nullable_to_non_nullable
as List<String>?,affiliations: freezed == affiliations ? _self.affiliations : affiliations // ignore: cast_nullable_to_non_nullable
as List<AffiliationDto>?,
  ));
}
/// Create a copy of AuthorshipDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorDtoCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $AuthorDtoCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}


/// Adds pattern-matching-related methods to [AuthorshipDto].
extension AuthorshipDtoPatterns on AuthorshipDto {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AuthorshipDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AuthorshipDto() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AuthorshipDto value)  $default,){
final _that = this;
switch (_that) {
case _AuthorshipDto():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AuthorshipDto value)?  $default,){
final _that = this;
switch (_that) {
case _AuthorshipDto() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? authorPosition,  AuthorDto? author,  List<InstitutionDto>? institutions,  List<String>? countries,  bool? isCorresponding,  String? rawAuthorName,  List<String>? rawAffiliationStrings,  List<AffiliationDto>? affiliations)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AuthorshipDto() when $default != null:
return $default(_that.authorPosition,_that.author,_that.institutions,_that.countries,_that.isCorresponding,_that.rawAuthorName,_that.rawAffiliationStrings,_that.affiliations);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? authorPosition,  AuthorDto? author,  List<InstitutionDto>? institutions,  List<String>? countries,  bool? isCorresponding,  String? rawAuthorName,  List<String>? rawAffiliationStrings,  List<AffiliationDto>? affiliations)  $default,) {final _that = this;
switch (_that) {
case _AuthorshipDto():
return $default(_that.authorPosition,_that.author,_that.institutions,_that.countries,_that.isCorresponding,_that.rawAuthorName,_that.rawAffiliationStrings,_that.affiliations);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? authorPosition,  AuthorDto? author,  List<InstitutionDto>? institutions,  List<String>? countries,  bool? isCorresponding,  String? rawAuthorName,  List<String>? rawAffiliationStrings,  List<AffiliationDto>? affiliations)?  $default,) {final _that = this;
switch (_that) {
case _AuthorshipDto() when $default != null:
return $default(_that.authorPosition,_that.author,_that.institutions,_that.countries,_that.isCorresponding,_that.rawAuthorName,_that.rawAffiliationStrings,_that.affiliations);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _AuthorshipDto implements AuthorshipDto {
   _AuthorshipDto({this.authorPosition, this.author, final  List<InstitutionDto>? institutions, final  List<String>? countries, this.isCorresponding, this.rawAuthorName, final  List<String>? rawAffiliationStrings, final  List<AffiliationDto>? affiliations}): _institutions = institutions,_countries = countries,_rawAffiliationStrings = rawAffiliationStrings,_affiliations = affiliations;
  factory _AuthorshipDto.fromJson(Map<String, dynamic> json) => _$AuthorshipDtoFromJson(json);

@override final  String? authorPosition;
// first/middle/last
@override final  AuthorDto? author;
 final  List<InstitutionDto>? _institutions;
@override List<InstitutionDto>? get institutions {
  final value = _institutions;
  if (value == null) return null;
  if (_institutions is EqualUnmodifiableListView) return _institutions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _countries;
@override List<String>? get countries {
  final value = _countries;
  if (value == null) return null;
  if (_countries is EqualUnmodifiableListView) return _countries;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  bool? isCorresponding;
@override final  String? rawAuthorName;
 final  List<String>? _rawAffiliationStrings;
@override List<String>? get rawAffiliationStrings {
  final value = _rawAffiliationStrings;
  if (value == null) return null;
  if (_rawAffiliationStrings is EqualUnmodifiableListView) return _rawAffiliationStrings;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

/// Campo nuevo documentado por OpenAlex: match de instituciones por afiliación.
 final  List<AffiliationDto>? _affiliations;
/// Campo nuevo documentado por OpenAlex: match de instituciones por afiliación.
@override List<AffiliationDto>? get affiliations {
  final value = _affiliations;
  if (value == null) return null;
  if (_affiliations is EqualUnmodifiableListView) return _affiliations;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}


/// Create a copy of AuthorshipDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AuthorshipDtoCopyWith<_AuthorshipDto> get copyWith => __$AuthorshipDtoCopyWithImpl<_AuthorshipDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AuthorshipDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AuthorshipDto&&(identical(other.authorPosition, authorPosition) || other.authorPosition == authorPosition)&&(identical(other.author, author) || other.author == author)&&const DeepCollectionEquality().equals(other._institutions, _institutions)&&const DeepCollectionEquality().equals(other._countries, _countries)&&(identical(other.isCorresponding, isCorresponding) || other.isCorresponding == isCorresponding)&&(identical(other.rawAuthorName, rawAuthorName) || other.rawAuthorName == rawAuthorName)&&const DeepCollectionEquality().equals(other._rawAffiliationStrings, _rawAffiliationStrings)&&const DeepCollectionEquality().equals(other._affiliations, _affiliations));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,authorPosition,author,const DeepCollectionEquality().hash(_institutions),const DeepCollectionEquality().hash(_countries),isCorresponding,rawAuthorName,const DeepCollectionEquality().hash(_rawAffiliationStrings),const DeepCollectionEquality().hash(_affiliations));

@override
String toString() {
  return 'AuthorshipDto(authorPosition: $authorPosition, author: $author, institutions: $institutions, countries: $countries, isCorresponding: $isCorresponding, rawAuthorName: $rawAuthorName, rawAffiliationStrings: $rawAffiliationStrings, affiliations: $affiliations)';
}


}

/// @nodoc
abstract mixin class _$AuthorshipDtoCopyWith<$Res> implements $AuthorshipDtoCopyWith<$Res> {
  factory _$AuthorshipDtoCopyWith(_AuthorshipDto value, $Res Function(_AuthorshipDto) _then) = __$AuthorshipDtoCopyWithImpl;
@override @useResult
$Res call({
 String? authorPosition, AuthorDto? author, List<InstitutionDto>? institutions, List<String>? countries, bool? isCorresponding, String? rawAuthorName, List<String>? rawAffiliationStrings, List<AffiliationDto>? affiliations
});


@override $AuthorDtoCopyWith<$Res>? get author;

}
/// @nodoc
class __$AuthorshipDtoCopyWithImpl<$Res>
    implements _$AuthorshipDtoCopyWith<$Res> {
  __$AuthorshipDtoCopyWithImpl(this._self, this._then);

  final _AuthorshipDto _self;
  final $Res Function(_AuthorshipDto) _then;

/// Create a copy of AuthorshipDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? authorPosition = freezed,Object? author = freezed,Object? institutions = freezed,Object? countries = freezed,Object? isCorresponding = freezed,Object? rawAuthorName = freezed,Object? rawAffiliationStrings = freezed,Object? affiliations = freezed,}) {
  return _then(_AuthorshipDto(
authorPosition: freezed == authorPosition ? _self.authorPosition : authorPosition // ignore: cast_nullable_to_non_nullable
as String?,author: freezed == author ? _self.author : author // ignore: cast_nullable_to_non_nullable
as AuthorDto?,institutions: freezed == institutions ? _self._institutions : institutions // ignore: cast_nullable_to_non_nullable
as List<InstitutionDto>?,countries: freezed == countries ? _self._countries : countries // ignore: cast_nullable_to_non_nullable
as List<String>?,isCorresponding: freezed == isCorresponding ? _self.isCorresponding : isCorresponding // ignore: cast_nullable_to_non_nullable
as bool?,rawAuthorName: freezed == rawAuthorName ? _self.rawAuthorName : rawAuthorName // ignore: cast_nullable_to_non_nullable
as String?,rawAffiliationStrings: freezed == rawAffiliationStrings ? _self._rawAffiliationStrings : rawAffiliationStrings // ignore: cast_nullable_to_non_nullable
as List<String>?,affiliations: freezed == affiliations ? _self._affiliations : affiliations // ignore: cast_nullable_to_non_nullable
as List<AffiliationDto>?,
  ));
}

/// Create a copy of AuthorshipDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AuthorDtoCopyWith<$Res>? get author {
    if (_self.author == null) {
    return null;
  }

  return $AuthorDtoCopyWith<$Res>(_self.author!, (value) {
    return _then(_self.copyWith(author: value));
  });
}
}

// dart format on

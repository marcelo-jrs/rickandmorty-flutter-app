// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterState {

 int get currentPage; List<CharacterModel> get charactersList; bool get isLoading; String get fetchCharactersError; bool get hasMore; InfoModel? get info; String get searchQuery; bool get isSearching; StatusFilter get statusFilter; GenderFilter get genderFilter; bool get hasActiveFilters;
/// Create a copy of CharacterState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterStateCopyWith<CharacterState> get copyWith => _$CharacterStateCopyWithImpl<CharacterState>(this as CharacterState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterState&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other.charactersList, charactersList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.fetchCharactersError, fetchCharactersError) || other.fetchCharactersError == fetchCharactersError)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.info, info) || other.info == info)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.statusFilter, statusFilter) || other.statusFilter == statusFilter)&&(identical(other.genderFilter, genderFilter) || other.genderFilter == genderFilter)&&(identical(other.hasActiveFilters, hasActiveFilters) || other.hasActiveFilters == hasActiveFilters));
}


@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(charactersList),isLoading,fetchCharactersError,hasMore,info,searchQuery,isSearching,statusFilter,genderFilter,hasActiveFilters);

@override
String toString() {
  return 'CharacterState(currentPage: $currentPage, charactersList: $charactersList, isLoading: $isLoading, fetchCharactersError: $fetchCharactersError, hasMore: $hasMore, info: $info, searchQuery: $searchQuery, isSearching: $isSearching, statusFilter: $statusFilter, genderFilter: $genderFilter, hasActiveFilters: $hasActiveFilters)';
}


}

/// @nodoc
abstract mixin class $CharacterStateCopyWith<$Res>  {
  factory $CharacterStateCopyWith(CharacterState value, $Res Function(CharacterState) _then) = _$CharacterStateCopyWithImpl;
@useResult
$Res call({
 int currentPage, List<CharacterModel> charactersList, bool isLoading, String fetchCharactersError, bool hasMore, InfoModel? info, String searchQuery, bool isSearching, StatusFilter statusFilter, GenderFilter genderFilter, bool hasActiveFilters
});


$InfoModelCopyWith<$Res>? get info;

}
/// @nodoc
class _$CharacterStateCopyWithImpl<$Res>
    implements $CharacterStateCopyWith<$Res> {
  _$CharacterStateCopyWithImpl(this._self, this._then);

  final CharacterState _self;
  final $Res Function(CharacterState) _then;

/// Create a copy of CharacterState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentPage = null,Object? charactersList = null,Object? isLoading = null,Object? fetchCharactersError = null,Object? hasMore = null,Object? info = freezed,Object? searchQuery = null,Object? isSearching = null,Object? statusFilter = null,Object? genderFilter = null,Object? hasActiveFilters = null,}) {
  return _then(_self.copyWith(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,charactersList: null == charactersList ? _self.charactersList : charactersList // ignore: cast_nullable_to_non_nullable
as List<CharacterModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,fetchCharactersError: null == fetchCharactersError ? _self.fetchCharactersError : fetchCharactersError // ignore: cast_nullable_to_non_nullable
as String,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as InfoModel?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,statusFilter: null == statusFilter ? _self.statusFilter : statusFilter // ignore: cast_nullable_to_non_nullable
as StatusFilter,genderFilter: null == genderFilter ? _self.genderFilter : genderFilter // ignore: cast_nullable_to_non_nullable
as GenderFilter,hasActiveFilters: null == hasActiveFilters ? _self.hasActiveFilters : hasActiveFilters // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of CharacterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoModelCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $InfoModelCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// Adds pattern-matching-related methods to [CharacterState].
extension CharacterStatePatterns on CharacterState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterState value)  $default,){
final _that = this;
switch (_that) {
case _CharacterState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterState value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentPage,  List<CharacterModel> charactersList,  bool isLoading,  String fetchCharactersError,  bool hasMore,  InfoModel? info,  String searchQuery,  bool isSearching,  StatusFilter statusFilter,  GenderFilter genderFilter,  bool hasActiveFilters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterState() when $default != null:
return $default(_that.currentPage,_that.charactersList,_that.isLoading,_that.fetchCharactersError,_that.hasMore,_that.info,_that.searchQuery,_that.isSearching,_that.statusFilter,_that.genderFilter,_that.hasActiveFilters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentPage,  List<CharacterModel> charactersList,  bool isLoading,  String fetchCharactersError,  bool hasMore,  InfoModel? info,  String searchQuery,  bool isSearching,  StatusFilter statusFilter,  GenderFilter genderFilter,  bool hasActiveFilters)  $default,) {final _that = this;
switch (_that) {
case _CharacterState():
return $default(_that.currentPage,_that.charactersList,_that.isLoading,_that.fetchCharactersError,_that.hasMore,_that.info,_that.searchQuery,_that.isSearching,_that.statusFilter,_that.genderFilter,_that.hasActiveFilters);case _:
  throw StateError('Unexpected subclass');

}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentPage,  List<CharacterModel> charactersList,  bool isLoading,  String fetchCharactersError,  bool hasMore,  InfoModel? info,  String searchQuery,  bool isSearching,  StatusFilter statusFilter,  GenderFilter genderFilter,  bool hasActiveFilters)?  $default,) {final _that = this;
switch (_that) {
case _CharacterState() when $default != null:
return $default(_that.currentPage,_that.charactersList,_that.isLoading,_that.fetchCharactersError,_that.hasMore,_that.info,_that.searchQuery,_that.isSearching,_that.statusFilter,_that.genderFilter,_that.hasActiveFilters);case _:
  return null;

}
}

}

/// @nodoc


class _CharacterState implements CharacterState {
   _CharacterState({this.currentPage = 1, final  List<CharacterModel> charactersList = const [], this.isLoading = false, this.fetchCharactersError = "", this.hasMore = false, this.info = null, this.searchQuery = "", this.isSearching = false, this.statusFilter = StatusFilter.none, this.genderFilter = GenderFilter.none, this.hasActiveFilters = false}): _charactersList = charactersList;
  

@override@JsonKey() final  int currentPage;
 final  List<CharacterModel> _charactersList;
@override@JsonKey() List<CharacterModel> get charactersList {
  if (_charactersList is EqualUnmodifiableListView) return _charactersList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_charactersList);
}

@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  String fetchCharactersError;
@override@JsonKey() final  bool hasMore;
@override@JsonKey() final  InfoModel? info;
@override@JsonKey() final  String searchQuery;
@override@JsonKey() final  bool isSearching;
@override@JsonKey() final  StatusFilter statusFilter;
@override@JsonKey() final  GenderFilter genderFilter;
@override@JsonKey() final  bool hasActiveFilters;

/// Create a copy of CharacterState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterStateCopyWith<_CharacterState> get copyWith => __$CharacterStateCopyWithImpl<_CharacterState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterState&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&const DeepCollectionEquality().equals(other._charactersList, _charactersList)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.fetchCharactersError, fetchCharactersError) || other.fetchCharactersError == fetchCharactersError)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.info, info) || other.info == info)&&(identical(other.searchQuery, searchQuery) || other.searchQuery == searchQuery)&&(identical(other.isSearching, isSearching) || other.isSearching == isSearching)&&(identical(other.statusFilter, statusFilter) || other.statusFilter == statusFilter)&&(identical(other.genderFilter, genderFilter) || other.genderFilter == genderFilter)&&(identical(other.hasActiveFilters, hasActiveFilters) || other.hasActiveFilters == hasActiveFilters));
}


@override
int get hashCode => Object.hash(runtimeType,currentPage,const DeepCollectionEquality().hash(_charactersList),isLoading,fetchCharactersError,hasMore,info,searchQuery,isSearching,statusFilter,genderFilter,hasActiveFilters);

@override
String toString() {
  return 'CharacterState(currentPage: $currentPage, charactersList: $charactersList, isLoading: $isLoading, fetchCharactersError: $fetchCharactersError, hasMore: $hasMore, info: $info, searchQuery: $searchQuery, isSearching: $isSearching, statusFilter: $statusFilter, genderFilter: $genderFilter, hasActiveFilters: $hasActiveFilters)';
}


}

/// @nodoc
abstract mixin class _$CharacterStateCopyWith<$Res> implements $CharacterStateCopyWith<$Res> {
  factory _$CharacterStateCopyWith(_CharacterState value, $Res Function(_CharacterState) _then) = __$CharacterStateCopyWithImpl;
@override @useResult
$Res call({
 int currentPage, List<CharacterModel> charactersList, bool isLoading, String fetchCharactersError, bool hasMore, InfoModel? info, String searchQuery, bool isSearching, StatusFilter statusFilter, GenderFilter genderFilter, bool hasActiveFilters
});


@override $InfoModelCopyWith<$Res>? get info;

}
/// @nodoc
class __$CharacterStateCopyWithImpl<$Res>
    implements _$CharacterStateCopyWith<$Res> {
  __$CharacterStateCopyWithImpl(this._self, this._then);

  final _CharacterState _self;
  final $Res Function(_CharacterState) _then;

/// Create a copy of CharacterState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentPage = null,Object? charactersList = null,Object? isLoading = null,Object? fetchCharactersError = null,Object? hasMore = null,Object? info = freezed,Object? searchQuery = null,Object? isSearching = null,Object? statusFilter = null,Object? genderFilter = null,Object? hasActiveFilters = null,}) {
  return _then(_CharacterState(
currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,charactersList: null == charactersList ? _self._charactersList : charactersList // ignore: cast_nullable_to_non_nullable
as List<CharacterModel>,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,fetchCharactersError: null == fetchCharactersError ? _self.fetchCharactersError : fetchCharactersError // ignore: cast_nullable_to_non_nullable
as String,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as InfoModel?,searchQuery: null == searchQuery ? _self.searchQuery : searchQuery // ignore: cast_nullable_to_non_nullable
as String,isSearching: null == isSearching ? _self.isSearching : isSearching // ignore: cast_nullable_to_non_nullable
as bool,statusFilter: null == statusFilter ? _self.statusFilter : statusFilter // ignore: cast_nullable_to_non_nullable
as StatusFilter,genderFilter: null == genderFilter ? _self.genderFilter : genderFilter // ignore: cast_nullable_to_non_nullable
as GenderFilter,hasActiveFilters: null == hasActiveFilters ? _self.hasActiveFilters : hasActiveFilters // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of CharacterState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoModelCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $InfoModelCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

// dart format on

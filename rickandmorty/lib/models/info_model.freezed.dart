// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'info_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$InfoModel {

 int get count; int get pages; String? get next; String? get prev;
/// Create a copy of InfoModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoModelCopyWith<InfoModel> get copyWith => _$InfoModelCopyWithImpl<InfoModel>(this as InfoModel, _$identity);

  /// Serializes this InfoModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoModel&&(identical(other.count, count) || other.count == count)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.next, next) || other.next == next)&&(identical(other.prev, prev) || other.prev == prev));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,pages,next,prev);

@override
String toString() {
  return 'InfoModel(count: $count, pages: $pages, next: $next, prev: $prev)';
}


}

/// @nodoc
abstract mixin class $InfoModelCopyWith<$Res>  {
  factory $InfoModelCopyWith(InfoModel value, $Res Function(InfoModel) _then) = _$InfoModelCopyWithImpl;
@useResult
$Res call({
 int count, int pages, String? next, String? prev
});




}
/// @nodoc
class _$InfoModelCopyWithImpl<$Res>
    implements $InfoModelCopyWith<$Res> {
  _$InfoModelCopyWithImpl(this._self, this._then);

  final InfoModel _self;
  final $Res Function(InfoModel) _then;

/// Create a copy of InfoModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? pages = null,Object? next = freezed,Object? prev = freezed,}) {
  return _then(_self.copyWith(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InfoModel].
extension InfoModelPatterns on InfoModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoModel value)  $default,){
final _that = this;
switch (_that) {
case _InfoModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoModel value)?  $default,){
final _that = this;
switch (_that) {
case _InfoModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  int pages,  String? next,  String? prev)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoModel() when $default != null:
return $default(_that.count,_that.pages,_that.next,_that.prev);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  int pages,  String? next,  String? prev)  $default,) {final _that = this;
switch (_that) {
case _InfoModel():
return $default(_that.count,_that.pages,_that.next,_that.prev);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  int pages,  String? next,  String? prev)?  $default,) {final _that = this;
switch (_that) {
case _InfoModel() when $default != null:
return $default(_that.count,_that.pages,_that.next,_that.prev);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoModel implements InfoModel {
  const _InfoModel({required this.count, required this.pages, this.next, this.prev});
  factory _InfoModel.fromJson(Map<String, dynamic> json) => _$InfoModelFromJson(json);

@override final  int count;
@override final  int pages;
@override final  String? next;
@override final  String? prev;

/// Create a copy of InfoModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoModelCopyWith<_InfoModel> get copyWith => __$InfoModelCopyWithImpl<_InfoModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoModelToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoModel&&(identical(other.count, count) || other.count == count)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.next, next) || other.next == next)&&(identical(other.prev, prev) || other.prev == prev));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,count,pages,next,prev);

@override
String toString() {
  return 'InfoModel(count: $count, pages: $pages, next: $next, prev: $prev)';
}


}

/// @nodoc
abstract mixin class _$InfoModelCopyWith<$Res> implements $InfoModelCopyWith<$Res> {
  factory _$InfoModelCopyWith(_InfoModel value, $Res Function(_InfoModel) _then) = __$InfoModelCopyWithImpl;
@override @useResult
$Res call({
 int count, int pages, String? next, String? prev
});




}
/// @nodoc
class __$InfoModelCopyWithImpl<$Res>
    implements _$InfoModelCopyWith<$Res> {
  __$InfoModelCopyWithImpl(this._self, this._then);

  final _InfoModel _self;
  final $Res Function(_InfoModel) _then;

/// Create a copy of InfoModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? pages = null,Object? next = freezed,Object? prev = freezed,}) {
  return _then(_InfoModel(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

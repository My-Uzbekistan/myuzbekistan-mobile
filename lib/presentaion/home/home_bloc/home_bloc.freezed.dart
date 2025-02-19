// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocInitialEvent value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocInitialEvent value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocInitialEvent value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocEventCopyWith<$Res> {
  factory $HomeBlocEventCopyWith(
          HomeBlocEvent value, $Res Function(HomeBlocEvent) then) =
      _$HomeBlocEventCopyWithImpl<$Res, HomeBlocEvent>;
}

/// @nodoc
class _$HomeBlocEventCopyWithImpl<$Res, $Val extends HomeBlocEvent>
    implements $HomeBlocEventCopyWith<$Res> {
  _$HomeBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeBlocInitialEventImplCopyWith<$Res> {
  factory _$$HomeBlocInitialEventImplCopyWith(_$HomeBlocInitialEventImpl value,
          $Res Function(_$HomeBlocInitialEventImpl) then) =
      __$$HomeBlocInitialEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeBlocInitialEventImplCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res, _$HomeBlocInitialEventImpl>
    implements _$$HomeBlocInitialEventImplCopyWith<$Res> {
  __$$HomeBlocInitialEventImplCopyWithImpl(_$HomeBlocInitialEventImpl _value,
      $Res Function(_$HomeBlocInitialEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeBlocInitialEventImpl implements _HomeBlocInitialEvent {
  _$HomeBlocInitialEventImpl();

  @override
  String toString() {
    return 'HomeBlocEvent.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocInitialEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocInitialEvent value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocInitialEvent value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocInitialEvent value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _HomeBlocInitialEvent implements HomeBlocEvent {
  factory _HomeBlocInitialEvent() = _$HomeBlocInitialEventImpl;
}

/// @nodoc
mixin _$HomeBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Categories> categories, List<PlaceCategories> placeCategories)
        dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Categories> categories, List<PlaceCategories> placeCategories)?
        dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Categories> categories, List<PlaceCategories> placeCategories)?
        dataState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocLoadingState value) loading,
    required TResult Function(HomeBlocDataState value) dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocLoadingState value)? loading,
    TResult? Function(HomeBlocDataState value)? dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocLoadingState value)? loading,
    TResult Function(HomeBlocDataState value)? dataState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeBlocStateCopyWith<$Res> {
  factory $HomeBlocStateCopyWith(
          HomeBlocState value, $Res Function(HomeBlocState) then) =
      _$HomeBlocStateCopyWithImpl<$Res, HomeBlocState>;
}

/// @nodoc
class _$HomeBlocStateCopyWithImpl<$Res, $Val extends HomeBlocState>
    implements $HomeBlocStateCopyWith<$Res> {
  _$HomeBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HomeBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$HomeBlocLoadingStateImplCopyWith<$Res> {
  factory _$$HomeBlocLoadingStateImplCopyWith(_$HomeBlocLoadingStateImpl value,
          $Res Function(_$HomeBlocLoadingStateImpl) then) =
      __$$HomeBlocLoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeBlocLoadingStateImplCopyWithImpl<$Res>
    extends _$HomeBlocStateCopyWithImpl<$Res, _$HomeBlocLoadingStateImpl>
    implements _$$HomeBlocLoadingStateImplCopyWith<$Res> {
  __$$HomeBlocLoadingStateImplCopyWithImpl(_$HomeBlocLoadingStateImpl _value,
      $Res Function(_$HomeBlocLoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$HomeBlocLoadingStateImpl implements _HomeBlocLoadingState {
  const _$HomeBlocLoadingStateImpl();

  @override
  String toString() {
    return 'HomeBlocState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocLoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Categories> categories, List<PlaceCategories> placeCategories)
        dataState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Categories> categories, List<PlaceCategories> placeCategories)?
        dataState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Categories> categories, List<PlaceCategories> placeCategories)?
        dataState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocLoadingState value) loading,
    required TResult Function(HomeBlocDataState value) dataState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocLoadingState value)? loading,
    TResult? Function(HomeBlocDataState value)? dataState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocLoadingState value)? loading,
    TResult Function(HomeBlocDataState value)? dataState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _HomeBlocLoadingState implements HomeBlocState {
  const factory _HomeBlocLoadingState() = _$HomeBlocLoadingStateImpl;
}

/// @nodoc
abstract class _$$HomeBlocDataStateImplCopyWith<$Res> {
  factory _$$HomeBlocDataStateImplCopyWith(_$HomeBlocDataStateImpl value,
          $Res Function(_$HomeBlocDataStateImpl) then) =
      __$$HomeBlocDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Categories> categories, List<PlaceCategories> placeCategories});
}

/// @nodoc
class __$$HomeBlocDataStateImplCopyWithImpl<$Res>
    extends _$HomeBlocStateCopyWithImpl<$Res, _$HomeBlocDataStateImpl>
    implements _$$HomeBlocDataStateImplCopyWith<$Res> {
  __$$HomeBlocDataStateImplCopyWithImpl(_$HomeBlocDataStateImpl _value,
      $Res Function(_$HomeBlocDataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categories = null,
    Object? placeCategories = null,
  }) {
    return _then(_$HomeBlocDataStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>,
      placeCategories: null == placeCategories
          ? _value._placeCategories
          : placeCategories // ignore: cast_nullable_to_non_nullable
              as List<PlaceCategories>,
    ));
  }
}

/// @nodoc

class _$HomeBlocDataStateImpl implements HomeBlocDataState {
  const _$HomeBlocDataStateImpl(
      {final List<Categories> categories = const [],
      final List<PlaceCategories> placeCategories = const []})
      : _categories = categories,
        _placeCategories = placeCategories;

  final List<Categories> _categories;
  @override
  @JsonKey()
  List<Categories> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<PlaceCategories> _placeCategories;
  @override
  @JsonKey()
  List<PlaceCategories> get placeCategories {
    if (_placeCategories is EqualUnmodifiableListView) return _placeCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_placeCategories);
  }

  @override
  String toString() {
    return 'HomeBlocState.dataState(categories: $categories, placeCategories: $placeCategories)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocDataStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality()
                .equals(other._placeCategories, _placeCategories));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_placeCategories));

  /// Create a copy of HomeBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeBlocDataStateImplCopyWith<_$HomeBlocDataStateImpl> get copyWith =>
      __$$HomeBlocDataStateImplCopyWithImpl<_$HomeBlocDataStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Categories> categories, List<PlaceCategories> placeCategories)
        dataState,
  }) {
    return dataState(categories, placeCategories);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Categories> categories, List<PlaceCategories> placeCategories)?
        dataState,
  }) {
    return dataState?.call(categories, placeCategories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Categories> categories, List<PlaceCategories> placeCategories)?
        dataState,
    required TResult orElse(),
  }) {
    if (dataState != null) {
      return dataState(categories, placeCategories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocLoadingState value) loading,
    required TResult Function(HomeBlocDataState value) dataState,
  }) {
    return dataState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocLoadingState value)? loading,
    TResult? Function(HomeBlocDataState value)? dataState,
  }) {
    return dataState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocLoadingState value)? loading,
    TResult Function(HomeBlocDataState value)? dataState,
    required TResult orElse(),
  }) {
    if (dataState != null) {
      return dataState(this);
    }
    return orElse();
  }
}

abstract class HomeBlocDataState implements HomeBlocState {
  const factory HomeBlocDataState(
      {final List<Categories> categories,
      final List<PlaceCategories> placeCategories}) = _$HomeBlocDataStateImpl;

  List<Categories> get categories;
  List<PlaceCategories> get placeCategories;

  /// Create a copy of HomeBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeBlocDataStateImplCopyWith<_$HomeBlocDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

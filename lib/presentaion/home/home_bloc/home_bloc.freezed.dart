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
    required TResult Function() loadDataEvent,
    required TResult Function(int regionId) changeRegion,
    required TResult Function() loadContents,
    required TResult Function() loadFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadDataEvent,
    TResult? Function(int regionId)? changeRegion,
    TResult? Function()? loadContents,
    TResult? Function()? loadFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadDataEvent,
    TResult Function(int regionId)? changeRegion,
    TResult Function()? loadContents,
    TResult Function()? loadFavorites,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocInitialEvent value) initial,
    required TResult Function(_LoadDataEvent value) loadDataEvent,
    required TResult Function(_ChangeRegion value) changeRegion,
    required TResult Function(_LoadContentsEvent value) loadContents,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocInitialEvent value)? initial,
    TResult? Function(_LoadDataEvent value)? loadDataEvent,
    TResult? Function(_ChangeRegion value)? changeRegion,
    TResult? Function(_LoadContentsEvent value)? loadContents,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocInitialEvent value)? initial,
    TResult Function(_LoadDataEvent value)? loadDataEvent,
    TResult Function(_ChangeRegion value)? changeRegion,
    TResult Function(_LoadContentsEvent value)? loadContents,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
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

class _$HomeBlocInitialEventImpl
    with DiagnosticableTreeMixin
    implements _HomeBlocInitialEvent {
  _$HomeBlocInitialEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeBlocEvent.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeBlocEvent.initial'));
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
    required TResult Function() loadDataEvent,
    required TResult Function(int regionId) changeRegion,
    required TResult Function() loadContents,
    required TResult Function() loadFavorites,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadDataEvent,
    TResult? Function(int regionId)? changeRegion,
    TResult? Function()? loadContents,
    TResult? Function()? loadFavorites,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadDataEvent,
    TResult Function(int regionId)? changeRegion,
    TResult Function()? loadContents,
    TResult Function()? loadFavorites,
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
    required TResult Function(_LoadDataEvent value) loadDataEvent,
    required TResult Function(_ChangeRegion value) changeRegion,
    required TResult Function(_LoadContentsEvent value) loadContents,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocInitialEvent value)? initial,
    TResult? Function(_LoadDataEvent value)? loadDataEvent,
    TResult? Function(_ChangeRegion value)? changeRegion,
    TResult? Function(_LoadContentsEvent value)? loadContents,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocInitialEvent value)? initial,
    TResult Function(_LoadDataEvent value)? loadDataEvent,
    TResult Function(_ChangeRegion value)? changeRegion,
    TResult Function(_LoadContentsEvent value)? loadContents,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
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
abstract class _$$LoadDataEventImplCopyWith<$Res> {
  factory _$$LoadDataEventImplCopyWith(
          _$LoadDataEventImpl value, $Res Function(_$LoadDataEventImpl) then) =
      __$$LoadDataEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadDataEventImplCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res, _$LoadDataEventImpl>
    implements _$$LoadDataEventImplCopyWith<$Res> {
  __$$LoadDataEventImplCopyWithImpl(
      _$LoadDataEventImpl _value, $Res Function(_$LoadDataEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadDataEventImpl
    with DiagnosticableTreeMixin
    implements _LoadDataEvent {
  _$LoadDataEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeBlocEvent.loadDataEvent()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeBlocEvent.loadDataEvent'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadDataEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadDataEvent,
    required TResult Function(int regionId) changeRegion,
    required TResult Function() loadContents,
    required TResult Function() loadFavorites,
  }) {
    return loadDataEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadDataEvent,
    TResult? Function(int regionId)? changeRegion,
    TResult? Function()? loadContents,
    TResult? Function()? loadFavorites,
  }) {
    return loadDataEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadDataEvent,
    TResult Function(int regionId)? changeRegion,
    TResult Function()? loadContents,
    TResult Function()? loadFavorites,
    required TResult orElse(),
  }) {
    if (loadDataEvent != null) {
      return loadDataEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocInitialEvent value) initial,
    required TResult Function(_LoadDataEvent value) loadDataEvent,
    required TResult Function(_ChangeRegion value) changeRegion,
    required TResult Function(_LoadContentsEvent value) loadContents,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
  }) {
    return loadDataEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocInitialEvent value)? initial,
    TResult? Function(_LoadDataEvent value)? loadDataEvent,
    TResult? Function(_ChangeRegion value)? changeRegion,
    TResult? Function(_LoadContentsEvent value)? loadContents,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
  }) {
    return loadDataEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocInitialEvent value)? initial,
    TResult Function(_LoadDataEvent value)? loadDataEvent,
    TResult Function(_ChangeRegion value)? changeRegion,
    TResult Function(_LoadContentsEvent value)? loadContents,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    required TResult orElse(),
  }) {
    if (loadDataEvent != null) {
      return loadDataEvent(this);
    }
    return orElse();
  }
}

abstract class _LoadDataEvent implements HomeBlocEvent {
  factory _LoadDataEvent() = _$LoadDataEventImpl;
}

/// @nodoc
abstract class _$$ChangeRegionImplCopyWith<$Res> {
  factory _$$ChangeRegionImplCopyWith(
          _$ChangeRegionImpl value, $Res Function(_$ChangeRegionImpl) then) =
      __$$ChangeRegionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int regionId});
}

/// @nodoc
class __$$ChangeRegionImplCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res, _$ChangeRegionImpl>
    implements _$$ChangeRegionImplCopyWith<$Res> {
  __$$ChangeRegionImplCopyWithImpl(
      _$ChangeRegionImpl _value, $Res Function(_$ChangeRegionImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? regionId = null,
  }) {
    return _then(_$ChangeRegionImpl(
      null == regionId
          ? _value.regionId
          : regionId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeRegionImpl with DiagnosticableTreeMixin implements _ChangeRegion {
  _$ChangeRegionImpl(this.regionId);

  @override
  final int regionId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeBlocEvent.changeRegion(regionId: $regionId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeBlocEvent.changeRegion'))
      ..add(DiagnosticsProperty('regionId', regionId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeRegionImpl &&
            (identical(other.regionId, regionId) ||
                other.regionId == regionId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, regionId);

  /// Create a copy of HomeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeRegionImplCopyWith<_$ChangeRegionImpl> get copyWith =>
      __$$ChangeRegionImplCopyWithImpl<_$ChangeRegionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadDataEvent,
    required TResult Function(int regionId) changeRegion,
    required TResult Function() loadContents,
    required TResult Function() loadFavorites,
  }) {
    return changeRegion(regionId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadDataEvent,
    TResult? Function(int regionId)? changeRegion,
    TResult? Function()? loadContents,
    TResult? Function()? loadFavorites,
  }) {
    return changeRegion?.call(regionId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadDataEvent,
    TResult Function(int regionId)? changeRegion,
    TResult Function()? loadContents,
    TResult Function()? loadFavorites,
    required TResult orElse(),
  }) {
    if (changeRegion != null) {
      return changeRegion(regionId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocInitialEvent value) initial,
    required TResult Function(_LoadDataEvent value) loadDataEvent,
    required TResult Function(_ChangeRegion value) changeRegion,
    required TResult Function(_LoadContentsEvent value) loadContents,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
  }) {
    return changeRegion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocInitialEvent value)? initial,
    TResult? Function(_LoadDataEvent value)? loadDataEvent,
    TResult? Function(_ChangeRegion value)? changeRegion,
    TResult? Function(_LoadContentsEvent value)? loadContents,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
  }) {
    return changeRegion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocInitialEvent value)? initial,
    TResult Function(_LoadDataEvent value)? loadDataEvent,
    TResult Function(_ChangeRegion value)? changeRegion,
    TResult Function(_LoadContentsEvent value)? loadContents,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    required TResult orElse(),
  }) {
    if (changeRegion != null) {
      return changeRegion(this);
    }
    return orElse();
  }
}

abstract class _ChangeRegion implements HomeBlocEvent {
  factory _ChangeRegion(final int regionId) = _$ChangeRegionImpl;

  int get regionId;

  /// Create a copy of HomeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeRegionImplCopyWith<_$ChangeRegionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadContentsEventImplCopyWith<$Res> {
  factory _$$LoadContentsEventImplCopyWith(_$LoadContentsEventImpl value,
          $Res Function(_$LoadContentsEventImpl) then) =
      __$$LoadContentsEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadContentsEventImplCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res, _$LoadContentsEventImpl>
    implements _$$LoadContentsEventImplCopyWith<$Res> {
  __$$LoadContentsEventImplCopyWithImpl(_$LoadContentsEventImpl _value,
      $Res Function(_$LoadContentsEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadContentsEventImpl
    with DiagnosticableTreeMixin
    implements _LoadContentsEvent {
  _$LoadContentsEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeBlocEvent.loadContents()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeBlocEvent.loadContents'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadContentsEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadDataEvent,
    required TResult Function(int regionId) changeRegion,
    required TResult Function() loadContents,
    required TResult Function() loadFavorites,
  }) {
    return loadContents();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadDataEvent,
    TResult? Function(int regionId)? changeRegion,
    TResult? Function()? loadContents,
    TResult? Function()? loadFavorites,
  }) {
    return loadContents?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadDataEvent,
    TResult Function(int regionId)? changeRegion,
    TResult Function()? loadContents,
    TResult Function()? loadFavorites,
    required TResult orElse(),
  }) {
    if (loadContents != null) {
      return loadContents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocInitialEvent value) initial,
    required TResult Function(_LoadDataEvent value) loadDataEvent,
    required TResult Function(_ChangeRegion value) changeRegion,
    required TResult Function(_LoadContentsEvent value) loadContents,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
  }) {
    return loadContents(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocInitialEvent value)? initial,
    TResult? Function(_LoadDataEvent value)? loadDataEvent,
    TResult? Function(_ChangeRegion value)? changeRegion,
    TResult? Function(_LoadContentsEvent value)? loadContents,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
  }) {
    return loadContents?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocInitialEvent value)? initial,
    TResult Function(_LoadDataEvent value)? loadDataEvent,
    TResult Function(_ChangeRegion value)? changeRegion,
    TResult Function(_LoadContentsEvent value)? loadContents,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    required TResult orElse(),
  }) {
    if (loadContents != null) {
      return loadContents(this);
    }
    return orElse();
  }
}

abstract class _LoadContentsEvent implements HomeBlocEvent {
  factory _LoadContentsEvent() = _$LoadContentsEventImpl;
}

/// @nodoc
abstract class _$$LoadFavoritesEventImplCopyWith<$Res> {
  factory _$$LoadFavoritesEventImplCopyWith(_$LoadFavoritesEventImpl value,
          $Res Function(_$LoadFavoritesEventImpl) then) =
      __$$LoadFavoritesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFavoritesEventImplCopyWithImpl<$Res>
    extends _$HomeBlocEventCopyWithImpl<$Res, _$LoadFavoritesEventImpl>
    implements _$$LoadFavoritesEventImplCopyWith<$Res> {
  __$$LoadFavoritesEventImplCopyWithImpl(_$LoadFavoritesEventImpl _value,
      $Res Function(_$LoadFavoritesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of HomeBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadFavoritesEventImpl
    with DiagnosticableTreeMixin
    implements _LoadFavoritesEvent {
  _$LoadFavoritesEventImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeBlocEvent.loadFavorites()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeBlocEvent.loadFavorites'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadFavoritesEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadDataEvent,
    required TResult Function(int regionId) changeRegion,
    required TResult Function() loadContents,
    required TResult Function() loadFavorites,
  }) {
    return loadFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadDataEvent,
    TResult? Function(int regionId)? changeRegion,
    TResult? Function()? loadContents,
    TResult? Function()? loadFavorites,
  }) {
    return loadFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadDataEvent,
    TResult Function(int regionId)? changeRegion,
    TResult Function()? loadContents,
    TResult Function()? loadFavorites,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_HomeBlocInitialEvent value) initial,
    required TResult Function(_LoadDataEvent value) loadDataEvent,
    required TResult Function(_ChangeRegion value) changeRegion,
    required TResult Function(_LoadContentsEvent value) loadContents,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
  }) {
    return loadFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_HomeBlocInitialEvent value)? initial,
    TResult? Function(_LoadDataEvent value)? loadDataEvent,
    TResult? Function(_ChangeRegion value)? changeRegion,
    TResult? Function(_LoadContentsEvent value)? loadContents,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
  }) {
    return loadFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_HomeBlocInitialEvent value)? initial,
    TResult Function(_LoadDataEvent value)? loadDataEvent,
    TResult Function(_ChangeRegion value)? changeRegion,
    TResult Function(_LoadContentsEvent value)? loadContents,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites(this);
    }
    return orElse();
  }
}

abstract class _LoadFavoritesEvent implements HomeBlocEvent {
  factory _LoadFavoritesEvent() = _$LoadFavoritesEventImpl;
}

/// @nodoc
mixin _$HomeBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(
            List<Categories> categories,
            List<ContentCategories> contents,
            List<Region> regions,
            List<String> favorites,
            int totalFavoriteCount,
            Region? selectedRegion,
            bool loadingContents)
        dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Categories> categories,
            List<ContentCategories> contents,
            List<Region> regions,
            List<String> favorites,
            int totalFavoriteCount,
            Region? selectedRegion,
            bool loadingContents)?
        dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Categories> categories,
            List<ContentCategories> contents,
            List<Region> regions,
            List<String> favorites,
            int totalFavoriteCount,
            Region? selectedRegion,
            bool loadingContents)?
        dataState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeBlocLoadingState value) loading,
    required TResult Function(HomeBlocDataState value) dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeBlocLoadingState value)? loading,
    TResult? Function(HomeBlocDataState value)? dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeBlocLoadingState value)? loading,
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

class _$HomeBlocLoadingStateImpl
    with DiagnosticableTreeMixin
    implements HomeBlocLoadingState {
  const _$HomeBlocLoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeBlocState.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HomeBlocState.loading'));
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
            List<Categories> categories,
            List<ContentCategories> contents,
            List<Region> regions,
            List<String> favorites,
            int totalFavoriteCount,
            Region? selectedRegion,
            bool loadingContents)
        dataState,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Categories> categories,
            List<ContentCategories> contents,
            List<Region> regions,
            List<String> favorites,
            int totalFavoriteCount,
            Region? selectedRegion,
            bool loadingContents)?
        dataState,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Categories> categories,
            List<ContentCategories> contents,
            List<Region> regions,
            List<String> favorites,
            int totalFavoriteCount,
            Region? selectedRegion,
            bool loadingContents)?
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
    required TResult Function(HomeBlocLoadingState value) loading,
    required TResult Function(HomeBlocDataState value) dataState,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeBlocLoadingState value)? loading,
    TResult? Function(HomeBlocDataState value)? dataState,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeBlocLoadingState value)? loading,
    TResult Function(HomeBlocDataState value)? dataState,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeBlocLoadingState implements HomeBlocState {
  const factory HomeBlocLoadingState() = _$HomeBlocLoadingStateImpl;
}

/// @nodoc
abstract class _$$HomeBlocDataStateImplCopyWith<$Res> {
  factory _$$HomeBlocDataStateImplCopyWith(_$HomeBlocDataStateImpl value,
          $Res Function(_$HomeBlocDataStateImpl) then) =
      __$$HomeBlocDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<Categories> categories,
      List<ContentCategories> contents,
      List<Region> regions,
      List<String> favorites,
      int totalFavoriteCount,
      Region? selectedRegion,
      bool loadingContents});
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
    Object? contents = null,
    Object? regions = null,
    Object? favorites = null,
    Object? totalFavoriteCount = null,
    Object? selectedRegion = freezed,
    Object? loadingContents = null,
  }) {
    return _then(_$HomeBlocDataStateImpl(
      categories: null == categories
          ? _value._categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Categories>,
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<ContentCategories>,
      regions: null == regions
          ? _value._regions
          : regions // ignore: cast_nullable_to_non_nullable
              as List<Region>,
      favorites: null == favorites
          ? _value._favorites
          : favorites // ignore: cast_nullable_to_non_nullable
              as List<String>,
      totalFavoriteCount: null == totalFavoriteCount
          ? _value.totalFavoriteCount
          : totalFavoriteCount // ignore: cast_nullable_to_non_nullable
              as int,
      selectedRegion: freezed == selectedRegion
          ? _value.selectedRegion
          : selectedRegion // ignore: cast_nullable_to_non_nullable
              as Region?,
      loadingContents: null == loadingContents
          ? _value.loadingContents
          : loadingContents // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$HomeBlocDataStateImpl
    with DiagnosticableTreeMixin
    implements HomeBlocDataState {
  const _$HomeBlocDataStateImpl(
      {final List<Categories> categories = const [],
      final List<ContentCategories> contents = const [],
      final List<Region> regions = const [],
      final List<String> favorites = const [],
      this.totalFavoriteCount = 0,
      this.selectedRegion,
      this.loadingContents = true})
      : _categories = categories,
        _contents = contents,
        _regions = regions,
        _favorites = favorites;

  final List<Categories> _categories;
  @override
  @JsonKey()
  List<Categories> get categories {
    if (_categories is EqualUnmodifiableListView) return _categories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_categories);
  }

  final List<ContentCategories> _contents;
  @override
  @JsonKey()
  List<ContentCategories> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  final List<Region> _regions;
  @override
  @JsonKey()
  List<Region> get regions {
    if (_regions is EqualUnmodifiableListView) return _regions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_regions);
  }

  final List<String> _favorites;
  @override
  @JsonKey()
  List<String> get favorites {
    if (_favorites is EqualUnmodifiableListView) return _favorites;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_favorites);
  }

  @override
  @JsonKey()
  final int totalFavoriteCount;
  @override
  final Region? selectedRegion;
  @override
  @JsonKey()
  final bool loadingContents;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HomeBlocState.dataState(categories: $categories, contents: $contents, regions: $regions, favorites: $favorites, totalFavoriteCount: $totalFavoriteCount, selectedRegion: $selectedRegion, loadingContents: $loadingContents)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'HomeBlocState.dataState'))
      ..add(DiagnosticsProperty('categories', categories))
      ..add(DiagnosticsProperty('contents', contents))
      ..add(DiagnosticsProperty('regions', regions))
      ..add(DiagnosticsProperty('favorites', favorites))
      ..add(DiagnosticsProperty('totalFavoriteCount', totalFavoriteCount))
      ..add(DiagnosticsProperty('selectedRegion', selectedRegion))
      ..add(DiagnosticsProperty('loadingContents', loadingContents));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeBlocDataStateImpl &&
            const DeepCollectionEquality()
                .equals(other._categories, _categories) &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            const DeepCollectionEquality().equals(other._regions, _regions) &&
            const DeepCollectionEquality()
                .equals(other._favorites, _favorites) &&
            (identical(other.totalFavoriteCount, totalFavoriteCount) ||
                other.totalFavoriteCount == totalFavoriteCount) &&
            (identical(other.selectedRegion, selectedRegion) ||
                other.selectedRegion == selectedRegion) &&
            (identical(other.loadingContents, loadingContents) ||
                other.loadingContents == loadingContents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_categories),
      const DeepCollectionEquality().hash(_contents),
      const DeepCollectionEquality().hash(_regions),
      const DeepCollectionEquality().hash(_favorites),
      totalFavoriteCount,
      selectedRegion,
      loadingContents);

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
            List<Categories> categories,
            List<ContentCategories> contents,
            List<Region> regions,
            List<String> favorites,
            int totalFavoriteCount,
            Region? selectedRegion,
            bool loadingContents)
        dataState,
  }) {
    return dataState(categories, contents, regions, favorites,
        totalFavoriteCount, selectedRegion, loadingContents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(
            List<Categories> categories,
            List<ContentCategories> contents,
            List<Region> regions,
            List<String> favorites,
            int totalFavoriteCount,
            Region? selectedRegion,
            bool loadingContents)?
        dataState,
  }) {
    return dataState?.call(categories, contents, regions, favorites,
        totalFavoriteCount, selectedRegion, loadingContents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(
            List<Categories> categories,
            List<ContentCategories> contents,
            List<Region> regions,
            List<String> favorites,
            int totalFavoriteCount,
            Region? selectedRegion,
            bool loadingContents)?
        dataState,
    required TResult orElse(),
  }) {
    if (dataState != null) {
      return dataState(categories, contents, regions, favorites,
          totalFavoriteCount, selectedRegion, loadingContents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeBlocLoadingState value) loading,
    required TResult Function(HomeBlocDataState value) dataState,
  }) {
    return dataState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeBlocLoadingState value)? loading,
    TResult? Function(HomeBlocDataState value)? dataState,
  }) {
    return dataState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeBlocLoadingState value)? loading,
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
      final List<ContentCategories> contents,
      final List<Region> regions,
      final List<String> favorites,
      final int totalFavoriteCount,
      final Region? selectedRegion,
      final bool loadingContents}) = _$HomeBlocDataStateImpl;

  List<Categories> get categories;
  List<ContentCategories> get contents;
  List<Region> get regions;
  List<String> get favorites;
  int get totalFavoriteCount;
  Region? get selectedRegion;
  bool get loadingContents;

  /// Create a copy of HomeBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HomeBlocDataStateImplCopyWith<_$HomeBlocDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DetailBlocEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId) initial,
    required TResult Function(bool isSetFavorite) changeFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId)? initial,
    TResult? Function(bool isSetFavorite)? changeFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId)? initial,
    TResult Function(bool isSetFavorite)? changeFavoriteState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailBlocInitialEvent value) initial,
    required TResult Function(_DetailBlocChangeFavorite value)
        changeFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailBlocInitialEvent value)? initial,
    TResult? Function(_DetailBlocChangeFavorite value)? changeFavoriteState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailBlocInitialEvent value)? initial,
    TResult Function(_DetailBlocChangeFavorite value)? changeFavoriteState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailBlocEventCopyWith<$Res> {
  factory $DetailBlocEventCopyWith(
          DetailBlocEvent value, $Res Function(DetailBlocEvent) then) =
      _$DetailBlocEventCopyWithImpl<$Res, DetailBlocEvent>;
}

/// @nodoc
class _$DetailBlocEventCopyWithImpl<$Res, $Val extends DetailBlocEvent>
    implements $DetailBlocEventCopyWith<$Res> {
  _$DetailBlocEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailBlocEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$DetailBlocInitialEventImplCopyWith<$Res> {
  factory _$$DetailBlocInitialEventImplCopyWith(
          _$DetailBlocInitialEventImpl value,
          $Res Function(_$DetailBlocInitialEventImpl) then) =
      __$$DetailBlocInitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String contentId});
}

/// @nodoc
class __$$DetailBlocInitialEventImplCopyWithImpl<$Res>
    extends _$DetailBlocEventCopyWithImpl<$Res, _$DetailBlocInitialEventImpl>
    implements _$$DetailBlocInitialEventImplCopyWith<$Res> {
  __$$DetailBlocInitialEventImplCopyWithImpl(
      _$DetailBlocInitialEventImpl _value,
      $Res Function(_$DetailBlocInitialEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
  }) {
    return _then(_$DetailBlocInitialEventImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$DetailBlocInitialEventImpl
    with DiagnosticableTreeMixin
    implements _DetailBlocInitialEvent {
  const _$DetailBlocInitialEventImpl({required this.contentId});

  @override
  final String contentId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailBlocEvent.initial(contentId: $contentId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailBlocEvent.initial'))
      ..add(DiagnosticsProperty('contentId', contentId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailBlocInitialEventImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentId);

  /// Create a copy of DetailBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailBlocInitialEventImplCopyWith<_$DetailBlocInitialEventImpl>
      get copyWith => __$$DetailBlocInitialEventImplCopyWithImpl<
          _$DetailBlocInitialEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId) initial,
    required TResult Function(bool isSetFavorite) changeFavoriteState,
  }) {
    return initial(contentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId)? initial,
    TResult? Function(bool isSetFavorite)? changeFavoriteState,
  }) {
    return initial?.call(contentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId)? initial,
    TResult Function(bool isSetFavorite)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(contentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailBlocInitialEvent value) initial,
    required TResult Function(_DetailBlocChangeFavorite value)
        changeFavoriteState,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailBlocInitialEvent value)? initial,
    TResult? Function(_DetailBlocChangeFavorite value)? changeFavoriteState,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailBlocInitialEvent value)? initial,
    TResult Function(_DetailBlocChangeFavorite value)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _DetailBlocInitialEvent implements DetailBlocEvent {
  const factory _DetailBlocInitialEvent({required final String contentId}) =
      _$DetailBlocInitialEventImpl;

  String get contentId;

  /// Create a copy of DetailBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailBlocInitialEventImplCopyWith<_$DetailBlocInitialEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DetailBlocChangeFavoriteImplCopyWith<$Res> {
  factory _$$DetailBlocChangeFavoriteImplCopyWith(
          _$DetailBlocChangeFavoriteImpl value,
          $Res Function(_$DetailBlocChangeFavoriteImpl) then) =
      __$$DetailBlocChangeFavoriteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isSetFavorite});
}

/// @nodoc
class __$$DetailBlocChangeFavoriteImplCopyWithImpl<$Res>
    extends _$DetailBlocEventCopyWithImpl<$Res, _$DetailBlocChangeFavoriteImpl>
    implements _$$DetailBlocChangeFavoriteImplCopyWith<$Res> {
  __$$DetailBlocChangeFavoriteImplCopyWithImpl(
      _$DetailBlocChangeFavoriteImpl _value,
      $Res Function(_$DetailBlocChangeFavoriteImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSetFavorite = null,
  }) {
    return _then(_$DetailBlocChangeFavoriteImpl(
      isSetFavorite: null == isSetFavorite
          ? _value.isSetFavorite
          : isSetFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DetailBlocChangeFavoriteImpl
    with DiagnosticableTreeMixin
    implements _DetailBlocChangeFavorite {
  const _$DetailBlocChangeFavoriteImpl({required this.isSetFavorite});

  @override
  final bool isSetFavorite;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailBlocEvent.changeFavoriteState(isSetFavorite: $isSetFavorite)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailBlocEvent.changeFavoriteState'))
      ..add(DiagnosticsProperty('isSetFavorite', isSetFavorite));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailBlocChangeFavoriteImpl &&
            (identical(other.isSetFavorite, isSetFavorite) ||
                other.isSetFavorite == isSetFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isSetFavorite);

  /// Create a copy of DetailBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailBlocChangeFavoriteImplCopyWith<_$DetailBlocChangeFavoriteImpl>
      get copyWith => __$$DetailBlocChangeFavoriteImplCopyWithImpl<
          _$DetailBlocChangeFavoriteImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contentId) initial,
    required TResult Function(bool isSetFavorite) changeFavoriteState,
  }) {
    return changeFavoriteState(isSetFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contentId)? initial,
    TResult? Function(bool isSetFavorite)? changeFavoriteState,
  }) {
    return changeFavoriteState?.call(isSetFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contentId)? initial,
    TResult Function(bool isSetFavorite)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (changeFavoriteState != null) {
      return changeFavoriteState(isSetFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DetailBlocInitialEvent value) initial,
    required TResult Function(_DetailBlocChangeFavorite value)
        changeFavoriteState,
  }) {
    return changeFavoriteState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_DetailBlocInitialEvent value)? initial,
    TResult? Function(_DetailBlocChangeFavorite value)? changeFavoriteState,
  }) {
    return changeFavoriteState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_DetailBlocInitialEvent value)? initial,
    TResult Function(_DetailBlocChangeFavorite value)? changeFavoriteState,
    required TResult orElse(),
  }) {
    if (changeFavoriteState != null) {
      return changeFavoriteState(this);
    }
    return orElse();
  }
}

abstract class _DetailBlocChangeFavorite implements DetailBlocEvent {
  const factory _DetailBlocChangeFavorite({required final bool isSetFavorite}) =
      _$DetailBlocChangeFavoriteImpl;

  bool get isSetFavorite;

  /// Create a copy of DetailBlocEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailBlocChangeFavoriteImplCopyWith<_$DetailBlocChangeFavoriteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DetailBlocState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function(ContentDetail contentDetail, NavState? navState)
        dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function(ContentDetail contentDetail, NavState? navState)?
        dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(ContentDetail contentDetail, NavState? navState)?
        dataState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(DetailBlocDataState value) dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(DetailBlocDataState value)? dataState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(DetailBlocDataState value)? dataState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailBlocStateCopyWith<$Res> {
  factory $DetailBlocStateCopyWith(
          DetailBlocState value, $Res Function(DetailBlocState) then) =
      _$DetailBlocStateCopyWithImpl<$Res, DetailBlocState>;
}

/// @nodoc
class _$DetailBlocStateCopyWithImpl<$Res, $Val extends DetailBlocState>
    implements $DetailBlocStateCopyWith<$Res> {
  _$DetailBlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoadingStateImplCopyWith<$Res> {
  factory _$$LoadingStateImplCopyWith(
          _$LoadingStateImpl value, $Res Function(_$LoadingStateImpl) then) =
      __$$LoadingStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingStateImplCopyWithImpl<$Res>
    extends _$DetailBlocStateCopyWithImpl<$Res, _$LoadingStateImpl>
    implements _$$LoadingStateImplCopyWith<$Res> {
  __$$LoadingStateImplCopyWithImpl(
      _$LoadingStateImpl _value, $Res Function(_$LoadingStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailBlocState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingStateImpl with DiagnosticableTreeMixin implements _LoadingState {
  const _$LoadingStateImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailBlocState.loadingState()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailBlocState.loadingState'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function(ContentDetail contentDetail, NavState? navState)
        dataState,
  }) {
    return loadingState();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function(ContentDetail contentDetail, NavState? navState)?
        dataState,
  }) {
    return loadingState?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(ContentDetail contentDetail, NavState? navState)?
        dataState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(DetailBlocDataState value) dataState,
  }) {
    return loadingState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(DetailBlocDataState value)? dataState,
  }) {
    return loadingState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(DetailBlocDataState value)? dataState,
    required TResult orElse(),
  }) {
    if (loadingState != null) {
      return loadingState(this);
    }
    return orElse();
  }
}

abstract class _LoadingState implements DetailBlocState {
  const factory _LoadingState() = _$LoadingStateImpl;
}

/// @nodoc
abstract class _$$DetailBlocDataStateImplCopyWith<$Res> {
  factory _$$DetailBlocDataStateImplCopyWith(_$DetailBlocDataStateImpl value,
          $Res Function(_$DetailBlocDataStateImpl) then) =
      __$$DetailBlocDataStateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ContentDetail contentDetail, NavState? navState});

  $NavStateCopyWith<$Res>? get navState;
}

/// @nodoc
class __$$DetailBlocDataStateImplCopyWithImpl<$Res>
    extends _$DetailBlocStateCopyWithImpl<$Res, _$DetailBlocDataStateImpl>
    implements _$$DetailBlocDataStateImplCopyWith<$Res> {
  __$$DetailBlocDataStateImplCopyWithImpl(_$DetailBlocDataStateImpl _value,
      $Res Function(_$DetailBlocDataStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of DetailBlocState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentDetail = null,
    Object? navState = freezed,
  }) {
    return _then(_$DetailBlocDataStateImpl(
      contentDetail: null == contentDetail
          ? _value.contentDetail
          : contentDetail // ignore: cast_nullable_to_non_nullable
              as ContentDetail,
      navState: freezed == navState
          ? _value.navState
          : navState // ignore: cast_nullable_to_non_nullable
              as NavState?,
    ));
  }

  /// Create a copy of DetailBlocState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NavStateCopyWith<$Res>? get navState {
    if (_value.navState == null) {
      return null;
    }

    return $NavStateCopyWith<$Res>(_value.navState!, (value) {
      return _then(_value.copyWith(navState: value));
    });
  }
}

/// @nodoc

class _$DetailBlocDataStateImpl
    with DiagnosticableTreeMixin
    implements DetailBlocDataState {
  const _$DetailBlocDataStateImpl({required this.contentDetail, this.navState});

  @override
  final ContentDetail contentDetail;
  @override
  final NavState? navState;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DetailBlocState.dataState(contentDetail: $contentDetail, navState: $navState)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DetailBlocState.dataState'))
      ..add(DiagnosticsProperty('contentDetail', contentDetail))
      ..add(DiagnosticsProperty('navState', navState));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailBlocDataStateImpl &&
            (identical(other.contentDetail, contentDetail) ||
                other.contentDetail == contentDetail) &&
            (identical(other.navState, navState) ||
                other.navState == navState));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentDetail, navState);

  /// Create a copy of DetailBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailBlocDataStateImplCopyWith<_$DetailBlocDataStateImpl> get copyWith =>
      __$$DetailBlocDataStateImplCopyWithImpl<_$DetailBlocDataStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loadingState,
    required TResult Function(ContentDetail contentDetail, NavState? navState)
        dataState,
  }) {
    return dataState(contentDetail, navState);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loadingState,
    TResult? Function(ContentDetail contentDetail, NavState? navState)?
        dataState,
  }) {
    return dataState?.call(contentDetail, navState);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loadingState,
    TResult Function(ContentDetail contentDetail, NavState? navState)?
        dataState,
    required TResult orElse(),
  }) {
    if (dataState != null) {
      return dataState(contentDetail, navState);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoadingState value) loadingState,
    required TResult Function(DetailBlocDataState value) dataState,
  }) {
    return dataState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoadingState value)? loadingState,
    TResult? Function(DetailBlocDataState value)? dataState,
  }) {
    return dataState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoadingState value)? loadingState,
    TResult Function(DetailBlocDataState value)? dataState,
    required TResult orElse(),
  }) {
    if (dataState != null) {
      return dataState(this);
    }
    return orElse();
  }
}

abstract class DetailBlocDataState implements DetailBlocState {
  const factory DetailBlocDataState(
      {required final ContentDetail contentDetail,
      final NavState? navState}) = _$DetailBlocDataStateImpl;

  ContentDetail get contentDetail;
  NavState? get navState;

  /// Create a copy of DetailBlocState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailBlocDataStateImplCopyWith<_$DetailBlocDataStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$NavState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavStateCopyWith<$Res> {
  factory $NavStateCopyWith(NavState value, $Res Function(NavState) then) =
      _$NavStateCopyWithImpl<$Res, NavState>;
}

/// @nodoc
class _$NavStateCopyWithImpl<$Res, $Val extends NavState>
    implements $NavStateCopyWith<$Res> {
  _$NavStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NavState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$NavStateCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);

  /// Create a copy of NavState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthorizedImpl with DiagnosticableTreeMixin implements Unauthorized {
  const _$UnauthorizedImpl();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NavState.unauthorized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'NavState.unauthorized'));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() unauthorized,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? unauthorized,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Unauthorized value) unauthorized,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Unauthorized value)? unauthorized,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Unauthorized value)? unauthorized,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class Unauthorized implements NavState {
  const factory Unauthorized() = _$UnauthorizedImpl;
}

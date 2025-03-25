// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contents_by_category_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ContentByCategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId) init,
    required TResult Function() initFavorite,
    required TResult Function() loadFavorites,
    required TResult Function() requestFavorite,
    required TResult Function() loadMore,
    required TResult Function(String query) setQuery,
    required TResult Function() loadContentEvent,
    required TResult Function(bool isFavorite, int contentId)
        updateItemFavoriteWithPopResult,
    required TResult Function(int contentId, bool isFavorite)
        updateItemFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId)? init,
    TResult? Function()? initFavorite,
    TResult? Function()? loadFavorites,
    TResult? Function()? requestFavorite,
    TResult? Function()? loadMore,
    TResult? Function(String query)? setQuery,
    TResult? Function()? loadContentEvent,
    TResult? Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult? Function(int contentId, bool isFavorite)? updateItemFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId)? init,
    TResult Function()? initFavorite,
    TResult Function()? loadFavorites,
    TResult Function()? requestFavorite,
    TResult Function()? loadMore,
    TResult Function(String query)? setQuery,
    TResult Function()? loadContentEvent,
    TResult Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult Function(int contentId, bool isFavorite)? updateItemFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_InitialFavoriteEvent value) initFavorite,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
    required TResult Function(_RequestFavorieEvent value) requestFavorite,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SetQueryEvent value) setQuery,
    required TResult Function(_LoadContentEvent value) loadContentEvent,
    required TResult Function(_UpdateItemFavoriteWithPopResult value)
        updateItemFavoriteWithPopResult,
    required TResult Function(_UpdateItemFavoriteEvent value)
        updateItemFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_InitialFavoriteEvent value)? initFavorite,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult? Function(_RequestFavorieEvent value)? requestFavorite,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SetQueryEvent value)? setQuery,
    TResult? Function(_LoadContentEvent value)? loadContentEvent,
    TResult? Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult? Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_InitialFavoriteEvent value)? initFavorite,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult Function(_RequestFavorieEvent value)? requestFavorite,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SetQueryEvent value)? setQuery,
    TResult Function(_LoadContentEvent value)? loadContentEvent,
    TResult Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentByCategoryEventCopyWith<$Res> {
  factory $ContentByCategoryEventCopyWith(ContentByCategoryEvent value,
          $Res Function(ContentByCategoryEvent) then) =
      _$ContentByCategoryEventCopyWithImpl<$Res, ContentByCategoryEvent>;
}

/// @nodoc
class _$ContentByCategoryEventCopyWithImpl<$Res,
        $Val extends ContentByCategoryEvent>
    implements $ContentByCategoryEventCopyWith<$Res> {
  _$ContentByCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialEventImplCopyWith<$Res> {
  factory _$$InitialEventImplCopyWith(
          _$InitialEventImpl value, $Res Function(_$InitialEventImpl) then) =
      __$$InitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int categoryId});
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$ContentByCategoryEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
  }) {
    return _then(_$InitialEventImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InitialEventImpl implements _InitialEvent {
  _$InitialEventImpl(this.categoryId);

  @override
  final int categoryId;

  @override
  String toString() {
    return 'ContentByCategoryEvent.init(categoryId: $categoryId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialEventImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, categoryId);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      __$$InitialEventImplCopyWithImpl<_$InitialEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId) init,
    required TResult Function() initFavorite,
    required TResult Function() loadFavorites,
    required TResult Function() requestFavorite,
    required TResult Function() loadMore,
    required TResult Function(String query) setQuery,
    required TResult Function() loadContentEvent,
    required TResult Function(bool isFavorite, int contentId)
        updateItemFavoriteWithPopResult,
    required TResult Function(int contentId, bool isFavorite)
        updateItemFavorite,
  }) {
    return init(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId)? init,
    TResult? Function()? initFavorite,
    TResult? Function()? loadFavorites,
    TResult? Function()? requestFavorite,
    TResult? Function()? loadMore,
    TResult? Function(String query)? setQuery,
    TResult? Function()? loadContentEvent,
    TResult? Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult? Function(int contentId, bool isFavorite)? updateItemFavorite,
  }) {
    return init?.call(categoryId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId)? init,
    TResult Function()? initFavorite,
    TResult Function()? loadFavorites,
    TResult Function()? requestFavorite,
    TResult Function()? loadMore,
    TResult Function(String query)? setQuery,
    TResult Function()? loadContentEvent,
    TResult Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult Function(int contentId, bool isFavorite)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(categoryId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_InitialFavoriteEvent value) initFavorite,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
    required TResult Function(_RequestFavorieEvent value) requestFavorite,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SetQueryEvent value) setQuery,
    required TResult Function(_LoadContentEvent value) loadContentEvent,
    required TResult Function(_UpdateItemFavoriteWithPopResult value)
        updateItemFavoriteWithPopResult,
    required TResult Function(_UpdateItemFavoriteEvent value)
        updateItemFavorite,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_InitialFavoriteEvent value)? initFavorite,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult? Function(_RequestFavorieEvent value)? requestFavorite,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SetQueryEvent value)? setQuery,
    TResult? Function(_LoadContentEvent value)? loadContentEvent,
    TResult? Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult? Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_InitialFavoriteEvent value)? initFavorite,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult Function(_RequestFavorieEvent value)? requestFavorite,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SetQueryEvent value)? setQuery,
    TResult Function(_LoadContentEvent value)? loadContentEvent,
    TResult Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements ContentByCategoryEvent {
  factory _InitialEvent(final int categoryId) = _$InitialEventImpl;

  int get categoryId;

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InitialFavoriteEventImplCopyWith<$Res> {
  factory _$$InitialFavoriteEventImplCopyWith(_$InitialFavoriteEventImpl value,
          $Res Function(_$InitialFavoriteEventImpl) then) =
      __$$InitialFavoriteEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialFavoriteEventImplCopyWithImpl<$Res>
    extends _$ContentByCategoryEventCopyWithImpl<$Res,
        _$InitialFavoriteEventImpl>
    implements _$$InitialFavoriteEventImplCopyWith<$Res> {
  __$$InitialFavoriteEventImplCopyWithImpl(_$InitialFavoriteEventImpl _value,
      $Res Function(_$InitialFavoriteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialFavoriteEventImpl implements _InitialFavoriteEvent {
  _$InitialFavoriteEventImpl();

  @override
  String toString() {
    return 'ContentByCategoryEvent.initFavorite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialFavoriteEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId) init,
    required TResult Function() initFavorite,
    required TResult Function() loadFavorites,
    required TResult Function() requestFavorite,
    required TResult Function() loadMore,
    required TResult Function(String query) setQuery,
    required TResult Function() loadContentEvent,
    required TResult Function(bool isFavorite, int contentId)
        updateItemFavoriteWithPopResult,
    required TResult Function(int contentId, bool isFavorite)
        updateItemFavorite,
  }) {
    return initFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId)? init,
    TResult? Function()? initFavorite,
    TResult? Function()? loadFavorites,
    TResult? Function()? requestFavorite,
    TResult? Function()? loadMore,
    TResult? Function(String query)? setQuery,
    TResult? Function()? loadContentEvent,
    TResult? Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult? Function(int contentId, bool isFavorite)? updateItemFavorite,
  }) {
    return initFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId)? init,
    TResult Function()? initFavorite,
    TResult Function()? loadFavorites,
    TResult Function()? requestFavorite,
    TResult Function()? loadMore,
    TResult Function(String query)? setQuery,
    TResult Function()? loadContentEvent,
    TResult Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult Function(int contentId, bool isFavorite)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (initFavorite != null) {
      return initFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_InitialFavoriteEvent value) initFavorite,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
    required TResult Function(_RequestFavorieEvent value) requestFavorite,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SetQueryEvent value) setQuery,
    required TResult Function(_LoadContentEvent value) loadContentEvent,
    required TResult Function(_UpdateItemFavoriteWithPopResult value)
        updateItemFavoriteWithPopResult,
    required TResult Function(_UpdateItemFavoriteEvent value)
        updateItemFavorite,
  }) {
    return initFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_InitialFavoriteEvent value)? initFavorite,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult? Function(_RequestFavorieEvent value)? requestFavorite,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SetQueryEvent value)? setQuery,
    TResult? Function(_LoadContentEvent value)? loadContentEvent,
    TResult? Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult? Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
  }) {
    return initFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_InitialFavoriteEvent value)? initFavorite,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult Function(_RequestFavorieEvent value)? requestFavorite,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SetQueryEvent value)? setQuery,
    TResult Function(_LoadContentEvent value)? loadContentEvent,
    TResult Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (initFavorite != null) {
      return initFavorite(this);
    }
    return orElse();
  }
}

abstract class _InitialFavoriteEvent implements ContentByCategoryEvent {
  factory _InitialFavoriteEvent() = _$InitialFavoriteEventImpl;
}

/// @nodoc
abstract class _$$LoadFavoritesEventImplCopyWith<$Res> {
  factory _$$LoadFavoritesEventImplCopyWith(_$LoadFavoritesEventImpl value,
          $Res Function(_$LoadFavoritesEventImpl) then) =
      __$$LoadFavoritesEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadFavoritesEventImplCopyWithImpl<$Res>
    extends _$ContentByCategoryEventCopyWithImpl<$Res, _$LoadFavoritesEventImpl>
    implements _$$LoadFavoritesEventImplCopyWith<$Res> {
  __$$LoadFavoritesEventImplCopyWithImpl(_$LoadFavoritesEventImpl _value,
      $Res Function(_$LoadFavoritesEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadFavoritesEventImpl implements _LoadFavoritesEvent {
  _$LoadFavoritesEventImpl();

  @override
  String toString() {
    return 'ContentByCategoryEvent.loadFavorites()';
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
    required TResult Function(int categoryId) init,
    required TResult Function() initFavorite,
    required TResult Function() loadFavorites,
    required TResult Function() requestFavorite,
    required TResult Function() loadMore,
    required TResult Function(String query) setQuery,
    required TResult Function() loadContentEvent,
    required TResult Function(bool isFavorite, int contentId)
        updateItemFavoriteWithPopResult,
    required TResult Function(int contentId, bool isFavorite)
        updateItemFavorite,
  }) {
    return loadFavorites();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId)? init,
    TResult? Function()? initFavorite,
    TResult? Function()? loadFavorites,
    TResult? Function()? requestFavorite,
    TResult? Function()? loadMore,
    TResult? Function(String query)? setQuery,
    TResult? Function()? loadContentEvent,
    TResult? Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult? Function(int contentId, bool isFavorite)? updateItemFavorite,
  }) {
    return loadFavorites?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId)? init,
    TResult Function()? initFavorite,
    TResult Function()? loadFavorites,
    TResult Function()? requestFavorite,
    TResult Function()? loadMore,
    TResult Function(String query)? setQuery,
    TResult Function()? loadContentEvent,
    TResult Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult Function(int contentId, bool isFavorite)? updateItemFavorite,
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
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_InitialFavoriteEvent value) initFavorite,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
    required TResult Function(_RequestFavorieEvent value) requestFavorite,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SetQueryEvent value) setQuery,
    required TResult Function(_LoadContentEvent value) loadContentEvent,
    required TResult Function(_UpdateItemFavoriteWithPopResult value)
        updateItemFavoriteWithPopResult,
    required TResult Function(_UpdateItemFavoriteEvent value)
        updateItemFavorite,
  }) {
    return loadFavorites(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_InitialFavoriteEvent value)? initFavorite,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult? Function(_RequestFavorieEvent value)? requestFavorite,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SetQueryEvent value)? setQuery,
    TResult? Function(_LoadContentEvent value)? loadContentEvent,
    TResult? Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult? Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
  }) {
    return loadFavorites?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_InitialFavoriteEvent value)? initFavorite,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult Function(_RequestFavorieEvent value)? requestFavorite,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SetQueryEvent value)? setQuery,
    TResult Function(_LoadContentEvent value)? loadContentEvent,
    TResult Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (loadFavorites != null) {
      return loadFavorites(this);
    }
    return orElse();
  }
}

abstract class _LoadFavoritesEvent implements ContentByCategoryEvent {
  factory _LoadFavoritesEvent() = _$LoadFavoritesEventImpl;
}

/// @nodoc
abstract class _$$RequestFavorieEventImplCopyWith<$Res> {
  factory _$$RequestFavorieEventImplCopyWith(_$RequestFavorieEventImpl value,
          $Res Function(_$RequestFavorieEventImpl) then) =
      __$$RequestFavorieEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RequestFavorieEventImplCopyWithImpl<$Res>
    extends _$ContentByCategoryEventCopyWithImpl<$Res,
        _$RequestFavorieEventImpl>
    implements _$$RequestFavorieEventImplCopyWith<$Res> {
  __$$RequestFavorieEventImplCopyWithImpl(_$RequestFavorieEventImpl _value,
      $Res Function(_$RequestFavorieEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$RequestFavorieEventImpl implements _RequestFavorieEvent {
  _$RequestFavorieEventImpl();

  @override
  String toString() {
    return 'ContentByCategoryEvent.requestFavorite()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RequestFavorieEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId) init,
    required TResult Function() initFavorite,
    required TResult Function() loadFavorites,
    required TResult Function() requestFavorite,
    required TResult Function() loadMore,
    required TResult Function(String query) setQuery,
    required TResult Function() loadContentEvent,
    required TResult Function(bool isFavorite, int contentId)
        updateItemFavoriteWithPopResult,
    required TResult Function(int contentId, bool isFavorite)
        updateItemFavorite,
  }) {
    return requestFavorite();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId)? init,
    TResult? Function()? initFavorite,
    TResult? Function()? loadFavorites,
    TResult? Function()? requestFavorite,
    TResult? Function()? loadMore,
    TResult? Function(String query)? setQuery,
    TResult? Function()? loadContentEvent,
    TResult? Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult? Function(int contentId, bool isFavorite)? updateItemFavorite,
  }) {
    return requestFavorite?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId)? init,
    TResult Function()? initFavorite,
    TResult Function()? loadFavorites,
    TResult Function()? requestFavorite,
    TResult Function()? loadMore,
    TResult Function(String query)? setQuery,
    TResult Function()? loadContentEvent,
    TResult Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult Function(int contentId, bool isFavorite)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (requestFavorite != null) {
      return requestFavorite();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_InitialFavoriteEvent value) initFavorite,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
    required TResult Function(_RequestFavorieEvent value) requestFavorite,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SetQueryEvent value) setQuery,
    required TResult Function(_LoadContentEvent value) loadContentEvent,
    required TResult Function(_UpdateItemFavoriteWithPopResult value)
        updateItemFavoriteWithPopResult,
    required TResult Function(_UpdateItemFavoriteEvent value)
        updateItemFavorite,
  }) {
    return requestFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_InitialFavoriteEvent value)? initFavorite,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult? Function(_RequestFavorieEvent value)? requestFavorite,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SetQueryEvent value)? setQuery,
    TResult? Function(_LoadContentEvent value)? loadContentEvent,
    TResult? Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult? Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
  }) {
    return requestFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_InitialFavoriteEvent value)? initFavorite,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult Function(_RequestFavorieEvent value)? requestFavorite,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SetQueryEvent value)? setQuery,
    TResult Function(_LoadContentEvent value)? loadContentEvent,
    TResult Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (requestFavorite != null) {
      return requestFavorite(this);
    }
    return orElse();
  }
}

abstract class _RequestFavorieEvent implements ContentByCategoryEvent {
  factory _RequestFavorieEvent() = _$RequestFavorieEventImpl;
}

/// @nodoc
abstract class _$$LoadMoreEventImplCopyWith<$Res> {
  factory _$$LoadMoreEventImplCopyWith(
          _$LoadMoreEventImpl value, $Res Function(_$LoadMoreEventImpl) then) =
      __$$LoadMoreEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadMoreEventImplCopyWithImpl<$Res>
    extends _$ContentByCategoryEventCopyWithImpl<$Res, _$LoadMoreEventImpl>
    implements _$$LoadMoreEventImplCopyWith<$Res> {
  __$$LoadMoreEventImplCopyWithImpl(
      _$LoadMoreEventImpl _value, $Res Function(_$LoadMoreEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadMoreEventImpl implements _LoadMoreEvent {
  _$LoadMoreEventImpl();

  @override
  String toString() {
    return 'ContentByCategoryEvent.loadMore()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadMoreEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId) init,
    required TResult Function() initFavorite,
    required TResult Function() loadFavorites,
    required TResult Function() requestFavorite,
    required TResult Function() loadMore,
    required TResult Function(String query) setQuery,
    required TResult Function() loadContentEvent,
    required TResult Function(bool isFavorite, int contentId)
        updateItemFavoriteWithPopResult,
    required TResult Function(int contentId, bool isFavorite)
        updateItemFavorite,
  }) {
    return loadMore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId)? init,
    TResult? Function()? initFavorite,
    TResult? Function()? loadFavorites,
    TResult? Function()? requestFavorite,
    TResult? Function()? loadMore,
    TResult? Function(String query)? setQuery,
    TResult? Function()? loadContentEvent,
    TResult? Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult? Function(int contentId, bool isFavorite)? updateItemFavorite,
  }) {
    return loadMore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId)? init,
    TResult Function()? initFavorite,
    TResult Function()? loadFavorites,
    TResult Function()? requestFavorite,
    TResult Function()? loadMore,
    TResult Function(String query)? setQuery,
    TResult Function()? loadContentEvent,
    TResult Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult Function(int contentId, bool isFavorite)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_InitialFavoriteEvent value) initFavorite,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
    required TResult Function(_RequestFavorieEvent value) requestFavorite,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SetQueryEvent value) setQuery,
    required TResult Function(_LoadContentEvent value) loadContentEvent,
    required TResult Function(_UpdateItemFavoriteWithPopResult value)
        updateItemFavoriteWithPopResult,
    required TResult Function(_UpdateItemFavoriteEvent value)
        updateItemFavorite,
  }) {
    return loadMore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_InitialFavoriteEvent value)? initFavorite,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult? Function(_RequestFavorieEvent value)? requestFavorite,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SetQueryEvent value)? setQuery,
    TResult? Function(_LoadContentEvent value)? loadContentEvent,
    TResult? Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult? Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
  }) {
    return loadMore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_InitialFavoriteEvent value)? initFavorite,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult Function(_RequestFavorieEvent value)? requestFavorite,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SetQueryEvent value)? setQuery,
    TResult Function(_LoadContentEvent value)? loadContentEvent,
    TResult Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (loadMore != null) {
      return loadMore(this);
    }
    return orElse();
  }
}

abstract class _LoadMoreEvent implements ContentByCategoryEvent {
  factory _LoadMoreEvent() = _$LoadMoreEventImpl;
}

/// @nodoc
abstract class _$$SetQueryEventImplCopyWith<$Res> {
  factory _$$SetQueryEventImplCopyWith(
          _$SetQueryEventImpl value, $Res Function(_$SetQueryEventImpl) then) =
      __$$SetQueryEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String query});
}

/// @nodoc
class __$$SetQueryEventImplCopyWithImpl<$Res>
    extends _$ContentByCategoryEventCopyWithImpl<$Res, _$SetQueryEventImpl>
    implements _$$SetQueryEventImplCopyWith<$Res> {
  __$$SetQueryEventImplCopyWithImpl(
      _$SetQueryEventImpl _value, $Res Function(_$SetQueryEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? query = null,
  }) {
    return _then(_$SetQueryEventImpl(
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SetQueryEventImpl implements _SetQueryEvent {
  _$SetQueryEventImpl(this.query);

  @override
  final String query;

  @override
  String toString() {
    return 'ContentByCategoryEvent.setQuery(query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetQueryEventImpl &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, query);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetQueryEventImplCopyWith<_$SetQueryEventImpl> get copyWith =>
      __$$SetQueryEventImplCopyWithImpl<_$SetQueryEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId) init,
    required TResult Function() initFavorite,
    required TResult Function() loadFavorites,
    required TResult Function() requestFavorite,
    required TResult Function() loadMore,
    required TResult Function(String query) setQuery,
    required TResult Function() loadContentEvent,
    required TResult Function(bool isFavorite, int contentId)
        updateItemFavoriteWithPopResult,
    required TResult Function(int contentId, bool isFavorite)
        updateItemFavorite,
  }) {
    return setQuery(query);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId)? init,
    TResult? Function()? initFavorite,
    TResult? Function()? loadFavorites,
    TResult? Function()? requestFavorite,
    TResult? Function()? loadMore,
    TResult? Function(String query)? setQuery,
    TResult? Function()? loadContentEvent,
    TResult? Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult? Function(int contentId, bool isFavorite)? updateItemFavorite,
  }) {
    return setQuery?.call(query);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId)? init,
    TResult Function()? initFavorite,
    TResult Function()? loadFavorites,
    TResult Function()? requestFavorite,
    TResult Function()? loadMore,
    TResult Function(String query)? setQuery,
    TResult Function()? loadContentEvent,
    TResult Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult Function(int contentId, bool isFavorite)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (setQuery != null) {
      return setQuery(query);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_InitialFavoriteEvent value) initFavorite,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
    required TResult Function(_RequestFavorieEvent value) requestFavorite,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SetQueryEvent value) setQuery,
    required TResult Function(_LoadContentEvent value) loadContentEvent,
    required TResult Function(_UpdateItemFavoriteWithPopResult value)
        updateItemFavoriteWithPopResult,
    required TResult Function(_UpdateItemFavoriteEvent value)
        updateItemFavorite,
  }) {
    return setQuery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_InitialFavoriteEvent value)? initFavorite,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult? Function(_RequestFavorieEvent value)? requestFavorite,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SetQueryEvent value)? setQuery,
    TResult? Function(_LoadContentEvent value)? loadContentEvent,
    TResult? Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult? Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
  }) {
    return setQuery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_InitialFavoriteEvent value)? initFavorite,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult Function(_RequestFavorieEvent value)? requestFavorite,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SetQueryEvent value)? setQuery,
    TResult Function(_LoadContentEvent value)? loadContentEvent,
    TResult Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (setQuery != null) {
      return setQuery(this);
    }
    return orElse();
  }
}

abstract class _SetQueryEvent implements ContentByCategoryEvent {
  factory _SetQueryEvent(final String query) = _$SetQueryEventImpl;

  String get query;

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetQueryEventImplCopyWith<_$SetQueryEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadContentEventImplCopyWith<$Res> {
  factory _$$LoadContentEventImplCopyWith(_$LoadContentEventImpl value,
          $Res Function(_$LoadContentEventImpl) then) =
      __$$LoadContentEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadContentEventImplCopyWithImpl<$Res>
    extends _$ContentByCategoryEventCopyWithImpl<$Res, _$LoadContentEventImpl>
    implements _$$LoadContentEventImplCopyWith<$Res> {
  __$$LoadContentEventImplCopyWithImpl(_$LoadContentEventImpl _value,
      $Res Function(_$LoadContentEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadContentEventImpl implements _LoadContentEvent {
  _$LoadContentEventImpl();

  @override
  String toString() {
    return 'ContentByCategoryEvent.loadContentEvent()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadContentEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId) init,
    required TResult Function() initFavorite,
    required TResult Function() loadFavorites,
    required TResult Function() requestFavorite,
    required TResult Function() loadMore,
    required TResult Function(String query) setQuery,
    required TResult Function() loadContentEvent,
    required TResult Function(bool isFavorite, int contentId)
        updateItemFavoriteWithPopResult,
    required TResult Function(int contentId, bool isFavorite)
        updateItemFavorite,
  }) {
    return loadContentEvent();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId)? init,
    TResult? Function()? initFavorite,
    TResult? Function()? loadFavorites,
    TResult? Function()? requestFavorite,
    TResult? Function()? loadMore,
    TResult? Function(String query)? setQuery,
    TResult? Function()? loadContentEvent,
    TResult? Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult? Function(int contentId, bool isFavorite)? updateItemFavorite,
  }) {
    return loadContentEvent?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId)? init,
    TResult Function()? initFavorite,
    TResult Function()? loadFavorites,
    TResult Function()? requestFavorite,
    TResult Function()? loadMore,
    TResult Function(String query)? setQuery,
    TResult Function()? loadContentEvent,
    TResult Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult Function(int contentId, bool isFavorite)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (loadContentEvent != null) {
      return loadContentEvent();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_InitialFavoriteEvent value) initFavorite,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
    required TResult Function(_RequestFavorieEvent value) requestFavorite,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SetQueryEvent value) setQuery,
    required TResult Function(_LoadContentEvent value) loadContentEvent,
    required TResult Function(_UpdateItemFavoriteWithPopResult value)
        updateItemFavoriteWithPopResult,
    required TResult Function(_UpdateItemFavoriteEvent value)
        updateItemFavorite,
  }) {
    return loadContentEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_InitialFavoriteEvent value)? initFavorite,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult? Function(_RequestFavorieEvent value)? requestFavorite,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SetQueryEvent value)? setQuery,
    TResult? Function(_LoadContentEvent value)? loadContentEvent,
    TResult? Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult? Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
  }) {
    return loadContentEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_InitialFavoriteEvent value)? initFavorite,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult Function(_RequestFavorieEvent value)? requestFavorite,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SetQueryEvent value)? setQuery,
    TResult Function(_LoadContentEvent value)? loadContentEvent,
    TResult Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (loadContentEvent != null) {
      return loadContentEvent(this);
    }
    return orElse();
  }
}

abstract class _LoadContentEvent implements ContentByCategoryEvent {
  factory _LoadContentEvent() = _$LoadContentEventImpl;
}

/// @nodoc
abstract class _$$UpdateItemFavoriteWithPopResultImplCopyWith<$Res> {
  factory _$$UpdateItemFavoriteWithPopResultImplCopyWith(
          _$UpdateItemFavoriteWithPopResultImpl value,
          $Res Function(_$UpdateItemFavoriteWithPopResultImpl) then) =
      __$$UpdateItemFavoriteWithPopResultImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFavorite, int contentId});
}

/// @nodoc
class __$$UpdateItemFavoriteWithPopResultImplCopyWithImpl<$Res>
    extends _$ContentByCategoryEventCopyWithImpl<$Res,
        _$UpdateItemFavoriteWithPopResultImpl>
    implements _$$UpdateItemFavoriteWithPopResultImplCopyWith<$Res> {
  __$$UpdateItemFavoriteWithPopResultImplCopyWithImpl(
      _$UpdateItemFavoriteWithPopResultImpl _value,
      $Res Function(_$UpdateItemFavoriteWithPopResultImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFavorite = null,
    Object? contentId = null,
  }) {
    return _then(_$UpdateItemFavoriteWithPopResultImpl(
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$UpdateItemFavoriteWithPopResultImpl
    implements _UpdateItemFavoriteWithPopResult {
  _$UpdateItemFavoriteWithPopResultImpl(
      {required this.isFavorite, required this.contentId});

  @override
  final bool isFavorite;
  @override
  final int contentId;

  @override
  String toString() {
    return 'ContentByCategoryEvent.updateItemFavoriteWithPopResult(isFavorite: $isFavorite, contentId: $contentId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateItemFavoriteWithPopResultImpl &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFavorite, contentId);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateItemFavoriteWithPopResultImplCopyWith<
          _$UpdateItemFavoriteWithPopResultImpl>
      get copyWith => __$$UpdateItemFavoriteWithPopResultImplCopyWithImpl<
          _$UpdateItemFavoriteWithPopResultImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId) init,
    required TResult Function() initFavorite,
    required TResult Function() loadFavorites,
    required TResult Function() requestFavorite,
    required TResult Function() loadMore,
    required TResult Function(String query) setQuery,
    required TResult Function() loadContentEvent,
    required TResult Function(bool isFavorite, int contentId)
        updateItemFavoriteWithPopResult,
    required TResult Function(int contentId, bool isFavorite)
        updateItemFavorite,
  }) {
    return updateItemFavoriteWithPopResult(isFavorite, contentId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId)? init,
    TResult? Function()? initFavorite,
    TResult? Function()? loadFavorites,
    TResult? Function()? requestFavorite,
    TResult? Function()? loadMore,
    TResult? Function(String query)? setQuery,
    TResult? Function()? loadContentEvent,
    TResult? Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult? Function(int contentId, bool isFavorite)? updateItemFavorite,
  }) {
    return updateItemFavoriteWithPopResult?.call(isFavorite, contentId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId)? init,
    TResult Function()? initFavorite,
    TResult Function()? loadFavorites,
    TResult Function()? requestFavorite,
    TResult Function()? loadMore,
    TResult Function(String query)? setQuery,
    TResult Function()? loadContentEvent,
    TResult Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult Function(int contentId, bool isFavorite)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (updateItemFavoriteWithPopResult != null) {
      return updateItemFavoriteWithPopResult(isFavorite, contentId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_InitialFavoriteEvent value) initFavorite,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
    required TResult Function(_RequestFavorieEvent value) requestFavorite,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SetQueryEvent value) setQuery,
    required TResult Function(_LoadContentEvent value) loadContentEvent,
    required TResult Function(_UpdateItemFavoriteWithPopResult value)
        updateItemFavoriteWithPopResult,
    required TResult Function(_UpdateItemFavoriteEvent value)
        updateItemFavorite,
  }) {
    return updateItemFavoriteWithPopResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_InitialFavoriteEvent value)? initFavorite,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult? Function(_RequestFavorieEvent value)? requestFavorite,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SetQueryEvent value)? setQuery,
    TResult? Function(_LoadContentEvent value)? loadContentEvent,
    TResult? Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult? Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
  }) {
    return updateItemFavoriteWithPopResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_InitialFavoriteEvent value)? initFavorite,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult Function(_RequestFavorieEvent value)? requestFavorite,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SetQueryEvent value)? setQuery,
    TResult Function(_LoadContentEvent value)? loadContentEvent,
    TResult Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (updateItemFavoriteWithPopResult != null) {
      return updateItemFavoriteWithPopResult(this);
    }
    return orElse();
  }
}

abstract class _UpdateItemFavoriteWithPopResult
    implements ContentByCategoryEvent {
  factory _UpdateItemFavoriteWithPopResult(
      {required final bool isFavorite,
      required final int contentId}) = _$UpdateItemFavoriteWithPopResultImpl;

  bool get isFavorite;
  int get contentId;

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateItemFavoriteWithPopResultImplCopyWith<
          _$UpdateItemFavoriteWithPopResultImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateItemFavoriteEventImplCopyWith<$Res> {
  factory _$$UpdateItemFavoriteEventImplCopyWith(
          _$UpdateItemFavoriteEventImpl value,
          $Res Function(_$UpdateItemFavoriteEventImpl) then) =
      __$$UpdateItemFavoriteEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int contentId, bool isFavorite});
}

/// @nodoc
class __$$UpdateItemFavoriteEventImplCopyWithImpl<$Res>
    extends _$ContentByCategoryEventCopyWithImpl<$Res,
        _$UpdateItemFavoriteEventImpl>
    implements _$$UpdateItemFavoriteEventImplCopyWith<$Res> {
  __$$UpdateItemFavoriteEventImplCopyWithImpl(
      _$UpdateItemFavoriteEventImpl _value,
      $Res Function(_$UpdateItemFavoriteEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? isFavorite = null,
  }) {
    return _then(_$UpdateItemFavoriteEventImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int,
      isFavorite: null == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$UpdateItemFavoriteEventImpl implements _UpdateItemFavoriteEvent {
  _$UpdateItemFavoriteEventImpl(
      {required this.contentId, required this.isFavorite});

  @override
  final int contentId;
  @override
  final bool isFavorite;

  @override
  String toString() {
    return 'ContentByCategoryEvent.updateItemFavorite(contentId: $contentId, isFavorite: $isFavorite)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateItemFavoriteEventImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentId, isFavorite);

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateItemFavoriteEventImplCopyWith<_$UpdateItemFavoriteEventImpl>
      get copyWith => __$$UpdateItemFavoriteEventImplCopyWithImpl<
          _$UpdateItemFavoriteEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId) init,
    required TResult Function() initFavorite,
    required TResult Function() loadFavorites,
    required TResult Function() requestFavorite,
    required TResult Function() loadMore,
    required TResult Function(String query) setQuery,
    required TResult Function() loadContentEvent,
    required TResult Function(bool isFavorite, int contentId)
        updateItemFavoriteWithPopResult,
    required TResult Function(int contentId, bool isFavorite)
        updateItemFavorite,
  }) {
    return updateItemFavorite(contentId, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId)? init,
    TResult? Function()? initFavorite,
    TResult? Function()? loadFavorites,
    TResult? Function()? requestFavorite,
    TResult? Function()? loadMore,
    TResult? Function(String query)? setQuery,
    TResult? Function()? loadContentEvent,
    TResult? Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult? Function(int contentId, bool isFavorite)? updateItemFavorite,
  }) {
    return updateItemFavorite?.call(contentId, isFavorite);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId)? init,
    TResult Function()? initFavorite,
    TResult Function()? loadFavorites,
    TResult Function()? requestFavorite,
    TResult Function()? loadMore,
    TResult Function(String query)? setQuery,
    TResult Function()? loadContentEvent,
    TResult Function(bool isFavorite, int contentId)?
        updateItemFavoriteWithPopResult,
    TResult Function(int contentId, bool isFavorite)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (updateItemFavorite != null) {
      return updateItemFavorite(contentId, isFavorite);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_InitialFavoriteEvent value) initFavorite,
    required TResult Function(_LoadFavoritesEvent value) loadFavorites,
    required TResult Function(_RequestFavorieEvent value) requestFavorite,
    required TResult Function(_LoadMoreEvent value) loadMore,
    required TResult Function(_SetQueryEvent value) setQuery,
    required TResult Function(_LoadContentEvent value) loadContentEvent,
    required TResult Function(_UpdateItemFavoriteWithPopResult value)
        updateItemFavoriteWithPopResult,
    required TResult Function(_UpdateItemFavoriteEvent value)
        updateItemFavorite,
  }) {
    return updateItemFavorite(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_InitialFavoriteEvent value)? initFavorite,
    TResult? Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult? Function(_RequestFavorieEvent value)? requestFavorite,
    TResult? Function(_LoadMoreEvent value)? loadMore,
    TResult? Function(_SetQueryEvent value)? setQuery,
    TResult? Function(_LoadContentEvent value)? loadContentEvent,
    TResult? Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult? Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
  }) {
    return updateItemFavorite?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_InitialFavoriteEvent value)? initFavorite,
    TResult Function(_LoadFavoritesEvent value)? loadFavorites,
    TResult Function(_RequestFavorieEvent value)? requestFavorite,
    TResult Function(_LoadMoreEvent value)? loadMore,
    TResult Function(_SetQueryEvent value)? setQuery,
    TResult Function(_LoadContentEvent value)? loadContentEvent,
    TResult Function(_UpdateItemFavoriteWithPopResult value)?
        updateItemFavoriteWithPopResult,
    TResult Function(_UpdateItemFavoriteEvent value)? updateItemFavorite,
    required TResult orElse(),
  }) {
    if (updateItemFavorite != null) {
      return updateItemFavorite(this);
    }
    return orElse();
  }
}

abstract class _UpdateItemFavoriteEvent implements ContentByCategoryEvent {
  factory _UpdateItemFavoriteEvent(
      {required final int contentId,
      required final bool isFavorite}) = _$UpdateItemFavoriteEventImpl;

  int get contentId;
  bool get isFavorite;

  /// Create a copy of ContentByCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateItemFavoriteEventImplCopyWith<_$UpdateItemFavoriteEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ContentByCategoryState {
  List<MainPageContent> get contents => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;
  ContentByCategoryType get type => throw _privateConstructorUsedError;
  String? get query => throw _privateConstructorUsedError;

  /// Create a copy of ContentByCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentByCategoryStateCopyWith<ContentByCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentByCategoryStateCopyWith<$Res> {
  factory $ContentByCategoryStateCopyWith(ContentByCategoryState value,
          $Res Function(ContentByCategoryState) then) =
      _$ContentByCategoryStateCopyWithImpl<$Res, ContentByCategoryState>;
  @useResult
  $Res call(
      {List<MainPageContent> contents,
      int categoryId,
      int page,
      int pageSize,
      bool isLoading,
      bool hasMore,
      ContentByCategoryType type,
      String? query});
}

/// @nodoc
class _$ContentByCategoryStateCopyWithImpl<$Res,
        $Val extends ContentByCategoryState>
    implements $ContentByCategoryStateCopyWith<$Res> {
  _$ContentByCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentByCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? categoryId = null,
    Object? page = null,
    Object? pageSize = null,
    Object? isLoading = null,
    Object? hasMore = null,
    Object? type = null,
    Object? query = freezed,
  }) {
    return _then(_value.copyWith(
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<MainPageContent>,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContentByCategoryType,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentByCategoryStateImplCopyWith<$Res>
    implements $ContentByCategoryStateCopyWith<$Res> {
  factory _$$ContentByCategoryStateImplCopyWith(
          _$ContentByCategoryStateImpl value,
          $Res Function(_$ContentByCategoryStateImpl) then) =
      __$$ContentByCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MainPageContent> contents,
      int categoryId,
      int page,
      int pageSize,
      bool isLoading,
      bool hasMore,
      ContentByCategoryType type,
      String? query});
}

/// @nodoc
class __$$ContentByCategoryStateImplCopyWithImpl<$Res>
    extends _$ContentByCategoryStateCopyWithImpl<$Res,
        _$ContentByCategoryStateImpl>
    implements _$$ContentByCategoryStateImplCopyWith<$Res> {
  __$$ContentByCategoryStateImplCopyWithImpl(
      _$ContentByCategoryStateImpl _value,
      $Res Function(_$ContentByCategoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentByCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? categoryId = null,
    Object? page = null,
    Object? pageSize = null,
    Object? isLoading = null,
    Object? hasMore = null,
    Object? type = null,
    Object? query = freezed,
  }) {
    return _then(_$ContentByCategoryStateImpl(
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<MainPageContent>,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      hasMore: null == hasMore
          ? _value.hasMore
          : hasMore // ignore: cast_nullable_to_non_nullable
              as bool,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as ContentByCategoryType,
      query: freezed == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ContentByCategoryStateImpl implements _ContentByCategoryState {
  _$ContentByCategoryStateImpl(
      {final List<MainPageContent> contents = const [],
      this.categoryId = 0,
      this.page = 1,
      this.pageSize = 20,
      this.isLoading = true,
      this.hasMore = true,
      this.type = ContentByCategoryType.contents,
      this.query})
      : _contents = contents;

  final List<MainPageContent> _contents;
  @override
  @JsonKey()
  List<MainPageContent> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  @JsonKey()
  final int categoryId;
  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final bool hasMore;
  @override
  @JsonKey()
  final ContentByCategoryType type;
  @override
  final String? query;

  @override
  String toString() {
    return 'ContentByCategoryState(contents: $contents, categoryId: $categoryId, page: $page, pageSize: $pageSize, isLoading: $isLoading, hasMore: $hasMore, type: $type, query: $query)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentByCategoryStateImpl &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contents),
      categoryId,
      page,
      pageSize,
      isLoading,
      hasMore,
      type,
      query);

  /// Create a copy of ContentByCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentByCategoryStateImplCopyWith<_$ContentByCategoryStateImpl>
      get copyWith => __$$ContentByCategoryStateImplCopyWithImpl<
          _$ContentByCategoryStateImpl>(this, _$identity);
}

abstract class _ContentByCategoryState implements ContentByCategoryState {
  factory _ContentByCategoryState(
      {final List<MainPageContent> contents,
      final int categoryId,
      final int page,
      final int pageSize,
      final bool isLoading,
      final bool hasMore,
      final ContentByCategoryType type,
      final String? query}) = _$ContentByCategoryStateImpl;

  @override
  List<MainPageContent> get contents;
  @override
  int get categoryId;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  bool get isLoading;
  @override
  bool get hasMore;
  @override
  ContentByCategoryType get type;
  @override
  String? get query;

  /// Create a copy of ContentByCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentByCategoryStateImplCopyWith<_$ContentByCategoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

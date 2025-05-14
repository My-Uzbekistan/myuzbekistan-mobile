// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'load_content_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoadContentCategoryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId, List<MainPageContent> contents)
        init,
    required TResult Function() loadNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId, List<MainPageContent> contents)? init,
    TResult? Function()? loadNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId, List<MainPageContent> contents)? init,
    TResult Function()? loadNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_LoadNextEvent value) loadNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_LoadNextEvent value)? loadNext,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_LoadNextEvent value)? loadNext,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadContentCategoryEventCopyWith<$Res> {
  factory $LoadContentCategoryEventCopyWith(LoadContentCategoryEvent value,
          $Res Function(LoadContentCategoryEvent) then) =
      _$LoadContentCategoryEventCopyWithImpl<$Res, LoadContentCategoryEvent>;
}

/// @nodoc
class _$LoadContentCategoryEventCopyWithImpl<$Res,
        $Val extends LoadContentCategoryEvent>
    implements $LoadContentCategoryEventCopyWith<$Res> {
  _$LoadContentCategoryEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadContentCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialEventImplCopyWith<$Res> {
  factory _$$InitialEventImplCopyWith(
          _$InitialEventImpl value, $Res Function(_$InitialEventImpl) then) =
      __$$InitialEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int categoryId, List<MainPageContent> contents});
}

/// @nodoc
class __$$InitialEventImplCopyWithImpl<$Res>
    extends _$LoadContentCategoryEventCopyWithImpl<$Res, _$InitialEventImpl>
    implements _$$InitialEventImplCopyWith<$Res> {
  __$$InitialEventImplCopyWithImpl(
      _$InitialEventImpl _value, $Res Function(_$InitialEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadContentCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? contents = null,
  }) {
    return _then(_$InitialEventImpl(
      null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<MainPageContent>,
    ));
  }
}

/// @nodoc

class _$InitialEventImpl implements _InitialEvent {
  _$InitialEventImpl(this.categoryId, final List<MainPageContent> contents)
      : _contents = contents;

  @override
  final int categoryId;
  final List<MainPageContent> _contents;
  @override
  List<MainPageContent> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  String toString() {
    return 'LoadContentCategoryEvent.init(categoryId: $categoryId, contents: $contents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialEventImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            const DeepCollectionEquality().equals(other._contents, _contents));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, categoryId, const DeepCollectionEquality().hash(_contents));

  /// Create a copy of LoadContentCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      __$$InitialEventImplCopyWithImpl<_$InitialEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId, List<MainPageContent> contents)
        init,
    required TResult Function() loadNext,
  }) {
    return init(categoryId, contents);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId, List<MainPageContent> contents)? init,
    TResult? Function()? loadNext,
  }) {
    return init?.call(categoryId, contents);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId, List<MainPageContent> contents)? init,
    TResult Function()? loadNext,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(categoryId, contents);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_LoadNextEvent value) loadNext,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_LoadNextEvent value)? loadNext,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_LoadNextEvent value)? loadNext,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class _InitialEvent implements LoadContentCategoryEvent {
  factory _InitialEvent(
          final int categoryId, final List<MainPageContent> contents) =
      _$InitialEventImpl;

  int get categoryId;
  List<MainPageContent> get contents;

  /// Create a copy of LoadContentCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialEventImplCopyWith<_$InitialEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadNextEventImplCopyWith<$Res> {
  factory _$$LoadNextEventImplCopyWith(
          _$LoadNextEventImpl value, $Res Function(_$LoadNextEventImpl) then) =
      __$$LoadNextEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadNextEventImplCopyWithImpl<$Res>
    extends _$LoadContentCategoryEventCopyWithImpl<$Res, _$LoadNextEventImpl>
    implements _$$LoadNextEventImplCopyWith<$Res> {
  __$$LoadNextEventImplCopyWithImpl(
      _$LoadNextEventImpl _value, $Res Function(_$LoadNextEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadContentCategoryEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadNextEventImpl implements _LoadNextEvent {
  _$LoadNextEventImpl();

  @override
  String toString() {
    return 'LoadContentCategoryEvent.loadNext()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadNextEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int categoryId, List<MainPageContent> contents)
        init,
    required TResult Function() loadNext,
  }) {
    return loadNext();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int categoryId, List<MainPageContent> contents)? init,
    TResult? Function()? loadNext,
  }) {
    return loadNext?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int categoryId, List<MainPageContent> contents)? init,
    TResult Function()? loadNext,
    required TResult orElse(),
  }) {
    if (loadNext != null) {
      return loadNext();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitialEvent value) init,
    required TResult Function(_LoadNextEvent value) loadNext,
  }) {
    return loadNext(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitialEvent value)? init,
    TResult? Function(_LoadNextEvent value)? loadNext,
  }) {
    return loadNext?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitialEvent value)? init,
    TResult Function(_LoadNextEvent value)? loadNext,
    required TResult orElse(),
  }) {
    if (loadNext != null) {
      return loadNext(this);
    }
    return orElse();
  }
}

abstract class _LoadNextEvent implements LoadContentCategoryEvent {
  factory _LoadNextEvent() = _$LoadNextEventImpl;
}

/// @nodoc
mixin _$LoadContentCategoryState {
  List<MainPageContent> get contents => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get hasMore => throw _privateConstructorUsedError;

  /// Create a copy of LoadContentCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoadContentCategoryStateCopyWith<LoadContentCategoryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadContentCategoryStateCopyWith<$Res> {
  factory $LoadContentCategoryStateCopyWith(LoadContentCategoryState value,
          $Res Function(LoadContentCategoryState) then) =
      _$LoadContentCategoryStateCopyWithImpl<$Res, LoadContentCategoryState>;
  @useResult
  $Res call(
      {List<MainPageContent> contents,
      int categoryId,
      int page,
      int pageSize,
      bool isLoading,
      bool hasMore});
}

/// @nodoc
class _$LoadContentCategoryStateCopyWithImpl<$Res,
        $Val extends LoadContentCategoryState>
    implements $LoadContentCategoryStateCopyWith<$Res> {
  _$LoadContentCategoryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoadContentCategoryState
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoadContentCategoryStateImplCopyWith<$Res>
    implements $LoadContentCategoryStateCopyWith<$Res> {
  factory _$$LoadContentCategoryStateImplCopyWith(
          _$LoadContentCategoryStateImpl value,
          $Res Function(_$LoadContentCategoryStateImpl) then) =
      __$$LoadContentCategoryStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<MainPageContent> contents,
      int categoryId,
      int page,
      int pageSize,
      bool isLoading,
      bool hasMore});
}

/// @nodoc
class __$$LoadContentCategoryStateImplCopyWithImpl<$Res>
    extends _$LoadContentCategoryStateCopyWithImpl<$Res,
        _$LoadContentCategoryStateImpl>
    implements _$$LoadContentCategoryStateImplCopyWith<$Res> {
  __$$LoadContentCategoryStateImplCopyWithImpl(
      _$LoadContentCategoryStateImpl _value,
      $Res Function(_$LoadContentCategoryStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoadContentCategoryState
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
  }) {
    return _then(_$LoadContentCategoryStateImpl(
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
    ));
  }
}

/// @nodoc

class _$LoadContentCategoryStateImpl implements _LoadContentCategoryState {
  _$LoadContentCategoryStateImpl(
      {final List<MainPageContent> contents = const [],
      this.categoryId = 0,
      this.page = 1,
      this.pageSize = 20,
      this.isLoading = true,
      this.hasMore = true})
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
  String toString() {
    return 'LoadContentCategoryState(contents: $contents, categoryId: $categoryId, page: $page, pageSize: $pageSize, isLoading: $isLoading, hasMore: $hasMore)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadContentCategoryStateImpl &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.hasMore, hasMore) || other.hasMore == hasMore));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contents),
      categoryId,
      page,
      pageSize,
      isLoading,
      hasMore);

  /// Create a copy of LoadContentCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadContentCategoryStateImplCopyWith<_$LoadContentCategoryStateImpl>
      get copyWith => __$$LoadContentCategoryStateImplCopyWithImpl<
          _$LoadContentCategoryStateImpl>(this, _$identity);
}

abstract class _LoadContentCategoryState implements LoadContentCategoryState {
  factory _LoadContentCategoryState(
      {final List<MainPageContent> contents,
      final int categoryId,
      final int page,
      final int pageSize,
      final bool isLoading,
      final bool hasMore}) = _$LoadContentCategoryStateImpl;

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

  /// Create a copy of LoadContentCategoryState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadContentCategoryStateImplCopyWith<_$LoadContentCategoryStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}

// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_dto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceCategoriesDto _$PlaceCategoriesDtoFromJson(Map<String, dynamic> json) {
  return _PlaceCategoriesDto.fromJson(json);
}

/// @nodoc
mixin _$PlaceCategoriesDto {
  int get categoryId =>
      throw _privateConstructorUsedError; // Only 'id' is required
  String get categoryName => throw _privateConstructorUsedError;
  List<PlaceDto> get contentView => throw _privateConstructorUsedError;

  /// Serializes this PlaceCategoriesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceCategoriesDtoCopyWith<PlaceCategoriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCategoriesDtoCopyWith<$Res> {
  factory $PlaceCategoriesDtoCopyWith(
          PlaceCategoriesDto value, $Res Function(PlaceCategoriesDto) then) =
      _$PlaceCategoriesDtoCopyWithImpl<$Res, PlaceCategoriesDto>;
  @useResult
  $Res call({int categoryId, String categoryName, List<PlaceDto> contentView});
}

/// @nodoc
class _$PlaceCategoriesDtoCopyWithImpl<$Res, $Val extends PlaceCategoriesDto>
    implements $PlaceCategoriesDtoCopyWith<$Res> {
  _$PlaceCategoriesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? contentView = null,
  }) {
    return _then(_value.copyWith(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      contentView: null == contentView
          ? _value.contentView
          : contentView // ignore: cast_nullable_to_non_nullable
              as List<PlaceDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceCategoriesDtoImplCopyWith<$Res>
    implements $PlaceCategoriesDtoCopyWith<$Res> {
  factory _$$PlaceCategoriesDtoImplCopyWith(_$PlaceCategoriesDtoImpl value,
          $Res Function(_$PlaceCategoriesDtoImpl) then) =
      __$$PlaceCategoriesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int categoryId, String categoryName, List<PlaceDto> contentView});
}

/// @nodoc
class __$$PlaceCategoriesDtoImplCopyWithImpl<$Res>
    extends _$PlaceCategoriesDtoCopyWithImpl<$Res, _$PlaceCategoriesDtoImpl>
    implements _$$PlaceCategoriesDtoImplCopyWith<$Res> {
  __$$PlaceCategoriesDtoImplCopyWithImpl(_$PlaceCategoriesDtoImpl _value,
      $Res Function(_$PlaceCategoriesDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? contentView = null,
  }) {
    return _then(_$PlaceCategoriesDtoImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      contentView: null == contentView
          ? _value._contentView
          : contentView // ignore: cast_nullable_to_non_nullable
              as List<PlaceDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceCategoriesDtoImpl extends _PlaceCategoriesDto {
  const _$PlaceCategoriesDtoImpl(
      {required this.categoryId,
      required this.categoryName,
      final List<PlaceDto> contentView = const []})
      : _contentView = contentView,
        super._();

  factory _$PlaceCategoriesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceCategoriesDtoImplFromJson(json);

  @override
  final int categoryId;
// Only 'id' is required
  @override
  final String categoryName;
  final List<PlaceDto> _contentView;
  @override
  @JsonKey()
  List<PlaceDto> get contentView {
    if (_contentView is EqualUnmodifiableListView) return _contentView;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contentView);
  }

  @override
  String toString() {
    return 'PlaceCategoriesDto(categoryId: $categoryId, categoryName: $categoryName, contentView: $contentView)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceCategoriesDtoImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            const DeepCollectionEquality()
                .equals(other._contentView, _contentView));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, categoryName,
      const DeepCollectionEquality().hash(_contentView));

  /// Create a copy of PlaceCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceCategoriesDtoImplCopyWith<_$PlaceCategoriesDtoImpl> get copyWith =>
      __$$PlaceCategoriesDtoImplCopyWithImpl<_$PlaceCategoriesDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceCategoriesDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaceCategoriesDto extends PlaceCategoriesDto {
  const factory _PlaceCategoriesDto(
      {required final int categoryId,
      required final String categoryName,
      final List<PlaceDto> contentView}) = _$PlaceCategoriesDtoImpl;
  const _PlaceCategoriesDto._() : super._();

  factory _PlaceCategoriesDto.fromJson(Map<String, dynamic> json) =
      _$PlaceCategoriesDtoImpl.fromJson;

  @override
  int get categoryId; // Only 'id' is required
  @override
  String get categoryName;
  @override
  List<PlaceDto> get contentView;

  /// Create a copy of PlaceCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceCategoriesDtoImplCopyWith<_$PlaceCategoriesDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PlaceDto _$PlaceDtoFromJson(Map<String, dynamic> json) {
  return _PlaceDto.fromJson(json);
}

/// @nodoc
mixin _$PlaceDto {
  int get id => throw _privateConstructorUsedError; // Only 'id' is required
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String? get workingHours => throw _privateConstructorUsedError;
  double? get ratingAverage => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get priceInDollar => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  bool? get recommended => throw _privateConstructorUsedError;
  String? get locale => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int? get status => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this PlaceDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceDtoCopyWith<PlaceDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDtoCopyWith<$Res> {
  factory $PlaceDtoCopyWith(PlaceDto value, $Res Function(PlaceDto) then) =
      _$PlaceDtoCopyWithImpl<$Res, PlaceDto>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      int? categoryId,
      String? workingHours,
      double? ratingAverage,
      double? price,
      double? priceInDollar,
      String? address,
      bool? recommended,
      String? locale,
      String? image,
      int? status,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class _$PlaceDtoCopyWithImpl<$Res, $Val extends PlaceDto>
    implements $PlaceDtoCopyWith<$Res> {
  _$PlaceDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? workingHours = freezed,
    Object? ratingAverage = freezed,
    Object? price = freezed,
    Object? priceInDollar = freezed,
    Object? address = freezed,
    Object? recommended = freezed,
    Object? locale = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingAverage: freezed == ratingAverage
          ? _value.ratingAverage
          : ratingAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      priceInDollar: freezed == priceInDollar
          ? _value.priceInDollar
          : priceInDollar // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceDtoImplCopyWith<$Res>
    implements $PlaceDtoCopyWith<$Res> {
  factory _$$PlaceDtoImplCopyWith(
          _$PlaceDtoImpl value, $Res Function(_$PlaceDtoImpl) then) =
      __$$PlaceDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      int? categoryId,
      String? workingHours,
      double? ratingAverage,
      double? price,
      double? priceInDollar,
      String? address,
      bool? recommended,
      String? locale,
      String? image,
      int? status,
      DateTime? createdAt,
      DateTime? updatedAt});
}

/// @nodoc
class __$$PlaceDtoImplCopyWithImpl<$Res>
    extends _$PlaceDtoCopyWithImpl<$Res, _$PlaceDtoImpl>
    implements _$$PlaceDtoImplCopyWith<$Res> {
  __$$PlaceDtoImplCopyWithImpl(
      _$PlaceDtoImpl _value, $Res Function(_$PlaceDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? workingHours = freezed,
    Object? ratingAverage = freezed,
    Object? price = freezed,
    Object? priceInDollar = freezed,
    Object? address = freezed,
    Object? recommended = freezed,
    Object? locale = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$PlaceDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as String?,
      ratingAverage: freezed == ratingAverage
          ? _value.ratingAverage
          : ratingAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      priceInDollar: freezed == priceInDollar
          ? _value.priceInDollar
          : priceInDollar // ignore: cast_nullable_to_non_nullable
              as double?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as bool?,
      locale: freezed == locale
          ? _value.locale
          : locale // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceDtoImpl extends _PlaceDto {
  const _$PlaceDtoImpl(
      {required this.id,
      this.title,
      this.description,
      this.categoryId,
      this.workingHours,
      this.ratingAverage,
      this.price,
      this.priceInDollar,
      this.address,
      this.recommended,
      this.locale,
      this.image,
      this.status,
      this.createdAt,
      this.updatedAt})
      : super._();

  factory _$PlaceDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceDtoImplFromJson(json);

  @override
  final int id;
// Only 'id' is required
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? categoryId;
  @override
  final String? workingHours;
  @override
  final double? ratingAverage;
  @override
  final double? price;
  @override
  final double? priceInDollar;
  @override
  final String? address;
  @override
  final bool? recommended;
  @override
  final String? locale;
  @override
  final String? image;
  @override
  final int? status;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'PlaceDto(id: $id, title: $title, description: $description, categoryId: $categoryId, workingHours: $workingHours, ratingAverage: $ratingAverage, price: $price, priceInDollar: $priceInDollar, address: $address, recommended: $recommended, locale: $locale, image: $image, status: $status, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.workingHours, workingHours) ||
                other.workingHours == workingHours) &&
            (identical(other.ratingAverage, ratingAverage) ||
                other.ratingAverage == ratingAverage) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceInDollar, priceInDollar) ||
                other.priceInDollar == priceInDollar) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      categoryId,
      workingHours,
      ratingAverage,
      price,
      priceInDollar,
      address,
      recommended,
      locale,
      image,
      status,
      createdAt,
      updatedAt);

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDtoImplCopyWith<_$PlaceDtoImpl> get copyWith =>
      __$$PlaceDtoImplCopyWithImpl<_$PlaceDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceDtoImplToJson(
      this,
    );
  }
}

abstract class _PlaceDto extends PlaceDto {
  const factory _PlaceDto(
      {required final int id,
      final String? title,
      final String? description,
      final int? categoryId,
      final String? workingHours,
      final double? ratingAverage,
      final double? price,
      final double? priceInDollar,
      final String? address,
      final bool? recommended,
      final String? locale,
      final String? image,
      final int? status,
      final DateTime? createdAt,
      final DateTime? updatedAt}) = _$PlaceDtoImpl;
  const _PlaceDto._() : super._();

  factory _PlaceDto.fromJson(Map<String, dynamic> json) =
      _$PlaceDtoImpl.fromJson;

  @override
  int get id; // Only 'id' is required
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get categoryId;
  @override
  String? get workingHours;
  @override
  double? get ratingAverage;
  @override
  double? get price;
  @override
  double? get priceInDollar;
  @override
  String? get address;
  @override
  bool? get recommended;
  @override
  String? get locale;
  @override
  String? get image;
  @override
  int? get status;
  @override
  DateTime? get createdAt;
  @override
  DateTime? get updatedAt;

  /// Create a copy of PlaceDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceDtoImplCopyWith<_$PlaceDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

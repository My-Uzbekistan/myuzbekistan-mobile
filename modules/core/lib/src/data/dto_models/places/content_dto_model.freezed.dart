// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_dto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentCategoriesDto _$ContentCategoriesDtoFromJson(Map<String, dynamic> json) {
  return _ContentCategoriesDto.fromJson(json);
}

/// @nodoc
mixin _$ContentCategoriesDto {
  int get categoryId => throw _privateConstructorUsedError;
  String get categoryName => throw _privateConstructorUsedError;
  int get viewType => throw _privateConstructorUsedError;
  MainPageContentDto? get recommended => throw _privateConstructorUsedError;
  List<MainPageContentDto> get contents => throw _privateConstructorUsedError;

  /// Serializes this ContentCategoriesDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentCategoriesDtoCopyWith<ContentCategoriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentCategoriesDtoCopyWith<$Res> {
  factory $ContentCategoriesDtoCopyWith(ContentCategoriesDto value,
          $Res Function(ContentCategoriesDto) then) =
      _$ContentCategoriesDtoCopyWithImpl<$Res, ContentCategoriesDto>;
  @useResult
  $Res call(
      {int categoryId,
      String categoryName,
      int viewType,
      MainPageContentDto? recommended,
      List<MainPageContentDto> contents});

  $MainPageContentDtoCopyWith<$Res>? get recommended;
}

/// @nodoc
class _$ContentCategoriesDtoCopyWithImpl<$Res,
        $Val extends ContentCategoriesDto>
    implements $ContentCategoriesDtoCopyWith<$Res> {
  _$ContentCategoriesDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? viewType = null,
    Object? recommended = freezed,
    Object? contents = null,
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
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as int,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as MainPageContentDto?,
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<MainPageContentDto>,
    ) as $Val);
  }

  /// Create a copy of ContentCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MainPageContentDtoCopyWith<$Res>? get recommended {
    if (_value.recommended == null) {
      return null;
    }

    return $MainPageContentDtoCopyWith<$Res>(_value.recommended!, (value) {
      return _then(_value.copyWith(recommended: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ContentCategoriesDtoImplCopyWith<$Res>
    implements $ContentCategoriesDtoCopyWith<$Res> {
  factory _$$ContentCategoriesDtoImplCopyWith(_$ContentCategoriesDtoImpl value,
          $Res Function(_$ContentCategoriesDtoImpl) then) =
      __$$ContentCategoriesDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int categoryId,
      String categoryName,
      int viewType,
      MainPageContentDto? recommended,
      List<MainPageContentDto> contents});

  @override
  $MainPageContentDtoCopyWith<$Res>? get recommended;
}

/// @nodoc
class __$$ContentCategoriesDtoImplCopyWithImpl<$Res>
    extends _$ContentCategoriesDtoCopyWithImpl<$Res, _$ContentCategoriesDtoImpl>
    implements _$$ContentCategoriesDtoImplCopyWith<$Res> {
  __$$ContentCategoriesDtoImplCopyWithImpl(_$ContentCategoriesDtoImpl _value,
      $Res Function(_$ContentCategoriesDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? categoryId = null,
    Object? categoryName = null,
    Object? viewType = null,
    Object? recommended = freezed,
    Object? contents = null,
  }) {
    return _then(_$ContentCategoriesDtoImpl(
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryName: null == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as int,
      recommended: freezed == recommended
          ? _value.recommended
          : recommended // ignore: cast_nullable_to_non_nullable
              as MainPageContentDto?,
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<MainPageContentDto>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentCategoriesDtoImpl extends _ContentCategoriesDto {
  const _$ContentCategoriesDtoImpl(
      {required this.categoryId,
      required this.categoryName,
      this.viewType = 0,
      this.recommended,
      final List<MainPageContentDto> contents = const []})
      : _contents = contents,
        super._();

  factory _$ContentCategoriesDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentCategoriesDtoImplFromJson(json);

  @override
  final int categoryId;
  @override
  final String categoryName;
  @override
  @JsonKey()
  final int viewType;
  @override
  final MainPageContentDto? recommended;
  final List<MainPageContentDto> _contents;
  @override
  @JsonKey()
  List<MainPageContentDto> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  String toString() {
    return 'ContentCategoriesDto(categoryId: $categoryId, categoryName: $categoryName, viewType: $viewType, recommended: $recommended, contents: $contents)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentCategoriesDtoImpl &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType) &&
            (identical(other.recommended, recommended) ||
                other.recommended == recommended) &&
            const DeepCollectionEquality().equals(other._contents, _contents));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, categoryId, categoryName,
      viewType, recommended, const DeepCollectionEquality().hash(_contents));

  /// Create a copy of ContentCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentCategoriesDtoImplCopyWith<_$ContentCategoriesDtoImpl>
      get copyWith =>
          __$$ContentCategoriesDtoImplCopyWithImpl<_$ContentCategoriesDtoImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentCategoriesDtoImplToJson(
      this,
    );
  }
}

abstract class _ContentCategoriesDto extends ContentCategoriesDto {
  const factory _ContentCategoriesDto(
      {required final int categoryId,
      required final String categoryName,
      final int viewType,
      final MainPageContentDto? recommended,
      final List<MainPageContentDto> contents}) = _$ContentCategoriesDtoImpl;
  const _ContentCategoriesDto._() : super._();

  factory _ContentCategoriesDto.fromJson(Map<String, dynamic> json) =
      _$ContentCategoriesDtoImpl.fromJson;

  @override
  int get categoryId;
  @override
  String get categoryName;
  @override
  int get viewType;
  @override
  MainPageContentDto? get recommended;
  @override
  List<MainPageContentDto> get contents;

  /// Create a copy of ContentCategoriesDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentCategoriesDtoImplCopyWith<_$ContentCategoriesDtoImpl>
      get copyWith => throw _privateConstructorUsedError;
}

TemperatureDto _$TemperatureDtoFromJson(Map<String, dynamic> json) {
  return _TemperatureDto.fromJson(json);
}

/// @nodoc
mixin _$TemperatureDto {
  String? get temperature => throw _privateConstructorUsedError;
  String? get condition => throw _privateConstructorUsedError;
  String? get iconUrl => throw _privateConstructorUsedError;

  /// Serializes this TemperatureDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TemperatureDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TemperatureDtoCopyWith<TemperatureDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TemperatureDtoCopyWith<$Res> {
  factory $TemperatureDtoCopyWith(
          TemperatureDto value, $Res Function(TemperatureDto) then) =
      _$TemperatureDtoCopyWithImpl<$Res, TemperatureDto>;
  @useResult
  $Res call({String? temperature, String? condition, String? iconUrl});
}

/// @nodoc
class _$TemperatureDtoCopyWithImpl<$Res, $Val extends TemperatureDto>
    implements $TemperatureDtoCopyWith<$Res> {
  _$TemperatureDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TemperatureDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? condition = freezed,
    Object? iconUrl = freezed,
  }) {
    return _then(_value.copyWith(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TemperatureDtoImplCopyWith<$Res>
    implements $TemperatureDtoCopyWith<$Res> {
  factory _$$TemperatureDtoImplCopyWith(_$TemperatureDtoImpl value,
          $Res Function(_$TemperatureDtoImpl) then) =
      __$$TemperatureDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? temperature, String? condition, String? iconUrl});
}

/// @nodoc
class __$$TemperatureDtoImplCopyWithImpl<$Res>
    extends _$TemperatureDtoCopyWithImpl<$Res, _$TemperatureDtoImpl>
    implements _$$TemperatureDtoImplCopyWith<$Res> {
  __$$TemperatureDtoImplCopyWithImpl(
      _$TemperatureDtoImpl _value, $Res Function(_$TemperatureDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of TemperatureDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? temperature = freezed,
    Object? condition = freezed,
    Object? iconUrl = freezed,
  }) {
    return _then(_$TemperatureDtoImpl(
      temperature: freezed == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as String?,
      condition: freezed == condition
          ? _value.condition
          : condition // ignore: cast_nullable_to_non_nullable
              as String?,
      iconUrl: freezed == iconUrl
          ? _value.iconUrl
          : iconUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TemperatureDtoImpl extends _TemperatureDto {
  const _$TemperatureDtoImpl({this.temperature, this.condition, this.iconUrl})
      : super._();

  factory _$TemperatureDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TemperatureDtoImplFromJson(json);

  @override
  final String? temperature;
  @override
  final String? condition;
  @override
  final String? iconUrl;

  @override
  String toString() {
    return 'TemperatureDto(temperature: $temperature, condition: $condition, iconUrl: $iconUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TemperatureDtoImpl &&
            (identical(other.temperature, temperature) ||
                other.temperature == temperature) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, temperature, condition, iconUrl);

  /// Create a copy of TemperatureDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TemperatureDtoImplCopyWith<_$TemperatureDtoImpl> get copyWith =>
      __$$TemperatureDtoImplCopyWithImpl<_$TemperatureDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TemperatureDtoImplToJson(
      this,
    );
  }
}

abstract class _TemperatureDto extends TemperatureDto {
  const factory _TemperatureDto(
      {final String? temperature,
      final String? condition,
      final String? iconUrl}) = _$TemperatureDtoImpl;
  const _TemperatureDto._() : super._();

  factory _TemperatureDto.fromJson(Map<String, dynamic> json) =
      _$TemperatureDtoImpl.fromJson;

  @override
  String? get temperature;
  @override
  String? get condition;
  @override
  String? get iconUrl;

  /// Create a copy of TemperatureDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TemperatureDtoImplCopyWith<_$TemperatureDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MainPageContentDto _$MainPageContentDtoFromJson(Map<String, dynamic> json) {
  return _MainPageContentDto.fromJson(json);
}

/// @nodoc
mixin _$MainPageContentDto {
  int get contentId => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get caption => throw _privateConstructorUsedError;
  @ImageArrayConvertor()
  List<String> get photos => throw _privateConstructorUsedError;
  @ImageConvertor()
  String? get photo => throw _privateConstructorUsedError;
  String? get region => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  double? get distance => throw _privateConstructorUsedError;
  int? get reviewCount => throw _privateConstructorUsedError;
  List<FacilityItemDto>? get facilities => throw _privateConstructorUsedError;
  List<String>? get languages => throw _privateConstructorUsedError;
  double? get ratingAverage => throw _privateConstructorUsedError;
  int? get averageCheck => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get priceInDollar => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;
  @ViewTypeConvertor()
  ViewType get viewType => throw _privateConstructorUsedError;

  /// Serializes this MainPageContentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MainPageContentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MainPageContentDtoCopyWith<MainPageContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MainPageContentDtoCopyWith<$Res> {
  factory $MainPageContentDtoCopyWith(
          MainPageContentDto value, $Res Function(MainPageContentDto) then) =
      _$MainPageContentDtoCopyWithImpl<$Res, MainPageContentDto>;
  @useResult
  $Res call(
      {int contentId,
      String? title,
      String? caption,
      @ImageArrayConvertor() List<String> photos,
      @ImageConvertor() String? photo,
      String? region,
      String? address,
      double? distance,
      int? reviewCount,
      List<FacilityItemDto>? facilities,
      List<String>? languages,
      double? ratingAverage,
      int? averageCheck,
      double? price,
      double? priceInDollar,
      bool? isFavorite,
      @ViewTypeConvertor() ViewType viewType});
}

/// @nodoc
class _$MainPageContentDtoCopyWithImpl<$Res, $Val extends MainPageContentDto>
    implements $MainPageContentDtoCopyWith<$Res> {
  _$MainPageContentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MainPageContentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? title = freezed,
    Object? caption = freezed,
    Object? photos = null,
    Object? photo = freezed,
    Object? region = freezed,
    Object? address = freezed,
    Object? distance = freezed,
    Object? reviewCount = freezed,
    Object? facilities = freezed,
    Object? languages = freezed,
    Object? ratingAverage = freezed,
    Object? averageCheck = freezed,
    Object? price = freezed,
    Object? priceInDollar = freezed,
    Object? isFavorite = freezed,
    Object? viewType = null,
  }) {
    return _then(_value.copyWith(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: null == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      facilities: freezed == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<FacilityItemDto>?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ratingAverage: freezed == ratingAverage
          ? _value.ratingAverage
          : ratingAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      averageCheck: freezed == averageCheck
          ? _value.averageCheck
          : averageCheck // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      priceInDollar: freezed == priceInDollar
          ? _value.priceInDollar
          : priceInDollar // ignore: cast_nullable_to_non_nullable
              as double?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MainPageContentDtoImplCopyWith<$Res>
    implements $MainPageContentDtoCopyWith<$Res> {
  factory _$$MainPageContentDtoImplCopyWith(_$MainPageContentDtoImpl value,
          $Res Function(_$MainPageContentDtoImpl) then) =
      __$$MainPageContentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int contentId,
      String? title,
      String? caption,
      @ImageArrayConvertor() List<String> photos,
      @ImageConvertor() String? photo,
      String? region,
      String? address,
      double? distance,
      int? reviewCount,
      List<FacilityItemDto>? facilities,
      List<String>? languages,
      double? ratingAverage,
      int? averageCheck,
      double? price,
      double? priceInDollar,
      bool? isFavorite,
      @ViewTypeConvertor() ViewType viewType});
}

/// @nodoc
class __$$MainPageContentDtoImplCopyWithImpl<$Res>
    extends _$MainPageContentDtoCopyWithImpl<$Res, _$MainPageContentDtoImpl>
    implements _$$MainPageContentDtoImplCopyWith<$Res> {
  __$$MainPageContentDtoImplCopyWithImpl(_$MainPageContentDtoImpl _value,
      $Res Function(_$MainPageContentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of MainPageContentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentId = null,
    Object? title = freezed,
    Object? caption = freezed,
    Object? photos = null,
    Object? photo = freezed,
    Object? region = freezed,
    Object? address = freezed,
    Object? distance = freezed,
    Object? reviewCount = freezed,
    Object? facilities = freezed,
    Object? languages = freezed,
    Object? ratingAverage = freezed,
    Object? averageCheck = freezed,
    Object? price = freezed,
    Object? priceInDollar = freezed,
    Object? isFavorite = freezed,
    Object? viewType = null,
  }) {
    return _then(_$MainPageContentDtoImpl(
      contentId: null == contentId
          ? _value.contentId
          : contentId // ignore: cast_nullable_to_non_nullable
              as int,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      caption: freezed == caption
          ? _value.caption
          : caption // ignore: cast_nullable_to_non_nullable
              as String?,
      photos: null == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      region: freezed == region
          ? _value.region
          : region // ignore: cast_nullable_to_non_nullable
              as String?,
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      distance: freezed == distance
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
      reviewCount: freezed == reviewCount
          ? _value.reviewCount
          : reviewCount // ignore: cast_nullable_to_non_nullable
              as int?,
      facilities: freezed == facilities
          ? _value._facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as List<FacilityItemDto>?,
      languages: freezed == languages
          ? _value._languages
          : languages // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      ratingAverage: freezed == ratingAverage
          ? _value.ratingAverage
          : ratingAverage // ignore: cast_nullable_to_non_nullable
              as double?,
      averageCheck: freezed == averageCheck
          ? _value.averageCheck
          : averageCheck // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      priceInDollar: freezed == priceInDollar
          ? _value.priceInDollar
          : priceInDollar // ignore: cast_nullable_to_non_nullable
              as double?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MainPageContentDtoImpl extends _MainPageContentDto {
  const _$MainPageContentDtoImpl(
      {required this.contentId,
      this.title,
      this.caption,
      @ImageArrayConvertor() final List<String> photos = const [],
      @ImageConvertor() this.photo,
      this.region,
      this.address,
      this.distance,
      this.reviewCount,
      final List<FacilityItemDto>? facilities,
      final List<String>? languages,
      this.ratingAverage,
      this.averageCheck,
      this.price,
      this.priceInDollar,
      this.isFavorite,
      @ViewTypeConvertor() this.viewType = ViewType.places})
      : _photos = photos,
        _facilities = facilities,
        _languages = languages,
        super._();

  factory _$MainPageContentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MainPageContentDtoImplFromJson(json);

  @override
  final int contentId;
  @override
  final String? title;
  @override
  final String? caption;
  final List<String> _photos;
  @override
  @JsonKey()
  @ImageArrayConvertor()
  List<String> get photos {
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_photos);
  }

  @override
  @ImageConvertor()
  final String? photo;
  @override
  final String? region;
  @override
  final String? address;
  @override
  final double? distance;
  @override
  final int? reviewCount;
  final List<FacilityItemDto>? _facilities;
  @override
  List<FacilityItemDto>? get facilities {
    final value = _facilities;
    if (value == null) return null;
    if (_facilities is EqualUnmodifiableListView) return _facilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _languages;
  @override
  List<String>? get languages {
    final value = _languages;
    if (value == null) return null;
    if (_languages is EqualUnmodifiableListView) return _languages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final double? ratingAverage;
  @override
  final int? averageCheck;
  @override
  final double? price;
  @override
  final double? priceInDollar;
  @override
  final bool? isFavorite;
  @override
  @JsonKey()
  @ViewTypeConvertor()
  final ViewType viewType;

  @override
  String toString() {
    return 'MainPageContentDto(contentId: $contentId, title: $title, caption: $caption, photos: $photos, photo: $photo, region: $region, address: $address, distance: $distance, reviewCount: $reviewCount, facilities: $facilities, languages: $languages, ratingAverage: $ratingAverage, averageCheck: $averageCheck, price: $price, priceInDollar: $priceInDollar, isFavorite: $isFavorite, viewType: $viewType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MainPageContentDtoImpl &&
            (identical(other.contentId, contentId) ||
                other.contentId == contentId) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.caption, caption) || other.caption == caption) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.region, region) || other.region == region) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.distance, distance) ||
                other.distance == distance) &&
            (identical(other.reviewCount, reviewCount) ||
                other.reviewCount == reviewCount) &&
            const DeepCollectionEquality()
                .equals(other._facilities, _facilities) &&
            const DeepCollectionEquality()
                .equals(other._languages, _languages) &&
            (identical(other.ratingAverage, ratingAverage) ||
                other.ratingAverage == ratingAverage) &&
            (identical(other.averageCheck, averageCheck) ||
                other.averageCheck == averageCheck) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceInDollar, priceInDollar) ||
                other.priceInDollar == priceInDollar) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      contentId,
      title,
      caption,
      const DeepCollectionEquality().hash(_photos),
      photo,
      region,
      address,
      distance,
      reviewCount,
      const DeepCollectionEquality().hash(_facilities),
      const DeepCollectionEquality().hash(_languages),
      ratingAverage,
      averageCheck,
      price,
      priceInDollar,
      isFavorite,
      viewType);

  /// Create a copy of MainPageContentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MainPageContentDtoImplCopyWith<_$MainPageContentDtoImpl> get copyWith =>
      __$$MainPageContentDtoImplCopyWithImpl<_$MainPageContentDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MainPageContentDtoImplToJson(
      this,
    );
  }
}

abstract class _MainPageContentDto extends MainPageContentDto {
  const factory _MainPageContentDto(
      {required final int contentId,
      final String? title,
      final String? caption,
      @ImageArrayConvertor() final List<String> photos,
      @ImageConvertor() final String? photo,
      final String? region,
      final String? address,
      final double? distance,
      final int? reviewCount,
      final List<FacilityItemDto>? facilities,
      final List<String>? languages,
      final double? ratingAverage,
      final int? averageCheck,
      final double? price,
      final double? priceInDollar,
      final bool? isFavorite,
      @ViewTypeConvertor() final ViewType viewType}) = _$MainPageContentDtoImpl;
  const _MainPageContentDto._() : super._();

  factory _MainPageContentDto.fromJson(Map<String, dynamic> json) =
      _$MainPageContentDtoImpl.fromJson;

  @override
  int get contentId;
  @override
  String? get title;
  @override
  String? get caption;
  @override
  @ImageArrayConvertor()
  List<String> get photos;
  @override
  @ImageConvertor()
  String? get photo;
  @override
  String? get region;
  @override
  String? get address;
  @override
  double? get distance;
  @override
  int? get reviewCount;
  @override
  List<FacilityItemDto>? get facilities;
  @override
  List<String>? get languages;
  @override
  double? get ratingAverage;
  @override
  int? get averageCheck;
  @override
  double? get price;
  @override
  double? get priceInDollar;
  @override
  bool? get isFavorite;
  @override
  @ViewTypeConvertor()
  ViewType get viewType;

  /// Create a copy of MainPageContentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MainPageContentDtoImplCopyWith<_$MainPageContentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

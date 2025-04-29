// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ContentDto _$ContentDtoFromJson(Map<String, dynamic> json) {
  return _ContentDto.fromJson(json);
}

/// @nodoc
mixin _$ContentDto {
  int get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get categoryId => throw _privateConstructorUsedError;
  String? get categoryName => throw _privateConstructorUsedError;
  bool? get isFavorite => throw _privateConstructorUsedError;
  FieldDto<String?>? get workingHours => throw _privateConstructorUsedError;
  FieldDto<List<double>>? get location => throw _privateConstructorUsedError;
  FieldDto<List<FacilityItemDto>>? get facilities =>
      throw _privateConstructorUsedError;
  FieldDto<List<String>>? get languages => throw _privateConstructorUsedError;
  FieldDto<List<AttachmentsItemDto>>? get attachments =>
      throw _privateConstructorUsedError;
  @ImageArrayConvertor()
  List<String>? get photos => throw _privateConstructorUsedError;
  @ImageConvertor()
  String? get photo => throw _privateConstructorUsedError;
  FieldDto<List<ContactsDto>>? get contacts =>
      throw _privateConstructorUsedError;
  double? get ratingAverage => throw _privateConstructorUsedError;
  int? get averageCheck => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  double? get priceInDollar => throw _privateConstructorUsedError;
  String? get address => throw _privateConstructorUsedError;
  @ViewTypeConvertor()
  ViewType get viewType => throw _privateConstructorUsedError;

  /// Serializes this ContentDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContentDtoCopyWith<ContentDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContentDtoCopyWith<$Res> {
  factory $ContentDtoCopyWith(
          ContentDto value, $Res Function(ContentDto) then) =
      _$ContentDtoCopyWithImpl<$Res, ContentDto>;
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      int? categoryId,
      String? categoryName,
      bool? isFavorite,
      FieldDto<String?>? workingHours,
      FieldDto<List<double>>? location,
      FieldDto<List<FacilityItemDto>>? facilities,
      FieldDto<List<String>>? languages,
      FieldDto<List<AttachmentsItemDto>>? attachments,
      @ImageArrayConvertor() List<String>? photos,
      @ImageConvertor() String? photo,
      FieldDto<List<ContactsDto>>? contacts,
      double? ratingAverage,
      int? averageCheck,
      double? price,
      double? priceInDollar,
      String? address,
      @ViewTypeConvertor() ViewType viewType});
}

/// @nodoc
class _$ContentDtoCopyWithImpl<$Res, $Val extends ContentDto>
    implements $ContentDtoCopyWith<$Res> {
  _$ContentDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? isFavorite = freezed,
    Object? workingHours = freezed,
    Object? location = freezed,
    Object? facilities = freezed,
    Object? languages = freezed,
    Object? attachments = freezed,
    Object? photos = freezed,
    Object? photo = freezed,
    Object? contacts = freezed,
    Object? ratingAverage = freezed,
    Object? averageCheck = freezed,
    Object? price = freezed,
    Object? priceInDollar = freezed,
    Object? address = freezed,
    Object? viewType = null,
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
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as FieldDto<String?>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as FieldDto<List<double>>?,
      facilities: freezed == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as FieldDto<List<FacilityItemDto>>?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as FieldDto<List<String>>?,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as FieldDto<List<AttachmentsItemDto>>?,
      photos: freezed == photos
          ? _value.photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as FieldDto<List<ContactsDto>>?,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContentDtoImplCopyWith<$Res>
    implements $ContentDtoCopyWith<$Res> {
  factory _$$ContentDtoImplCopyWith(
          _$ContentDtoImpl value, $Res Function(_$ContentDtoImpl) then) =
      __$$ContentDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String? title,
      String? description,
      int? categoryId,
      String? categoryName,
      bool? isFavorite,
      FieldDto<String?>? workingHours,
      FieldDto<List<double>>? location,
      FieldDto<List<FacilityItemDto>>? facilities,
      FieldDto<List<String>>? languages,
      FieldDto<List<AttachmentsItemDto>>? attachments,
      @ImageArrayConvertor() List<String>? photos,
      @ImageConvertor() String? photo,
      FieldDto<List<ContactsDto>>? contacts,
      double? ratingAverage,
      int? averageCheck,
      double? price,
      double? priceInDollar,
      String? address,
      @ViewTypeConvertor() ViewType viewType});
}

/// @nodoc
class __$$ContentDtoImplCopyWithImpl<$Res>
    extends _$ContentDtoCopyWithImpl<$Res, _$ContentDtoImpl>
    implements _$$ContentDtoImplCopyWith<$Res> {
  __$$ContentDtoImplCopyWithImpl(
      _$ContentDtoImpl _value, $Res Function(_$ContentDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContentDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = freezed,
    Object? description = freezed,
    Object? categoryId = freezed,
    Object? categoryName = freezed,
    Object? isFavorite = freezed,
    Object? workingHours = freezed,
    Object? location = freezed,
    Object? facilities = freezed,
    Object? languages = freezed,
    Object? attachments = freezed,
    Object? photos = freezed,
    Object? photo = freezed,
    Object? contacts = freezed,
    Object? ratingAverage = freezed,
    Object? averageCheck = freezed,
    Object? price = freezed,
    Object? priceInDollar = freezed,
    Object? address = freezed,
    Object? viewType = null,
  }) {
    return _then(_$ContentDtoImpl(
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
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      isFavorite: freezed == isFavorite
          ? _value.isFavorite
          : isFavorite // ignore: cast_nullable_to_non_nullable
              as bool?,
      workingHours: freezed == workingHours
          ? _value.workingHours
          : workingHours // ignore: cast_nullable_to_non_nullable
              as FieldDto<String?>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as FieldDto<List<double>>?,
      facilities: freezed == facilities
          ? _value.facilities
          : facilities // ignore: cast_nullable_to_non_nullable
              as FieldDto<List<FacilityItemDto>>?,
      languages: freezed == languages
          ? _value.languages
          : languages // ignore: cast_nullable_to_non_nullable
              as FieldDto<List<String>>?,
      attachments: freezed == attachments
          ? _value.attachments
          : attachments // ignore: cast_nullable_to_non_nullable
              as FieldDto<List<AttachmentsItemDto>>?,
      photos: freezed == photos
          ? _value._photos
          : photos // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      photo: freezed == photo
          ? _value.photo
          : photo // ignore: cast_nullable_to_non_nullable
              as String?,
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as FieldDto<List<ContactsDto>>?,
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
      address: freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String?,
      viewType: null == viewType
          ? _value.viewType
          : viewType // ignore: cast_nullable_to_non_nullable
              as ViewType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContentDtoImpl extends _ContentDto {
  const _$ContentDtoImpl(
      {required this.id,
      this.title,
      this.description,
      this.categoryId,
      this.categoryName,
      this.isFavorite,
      this.workingHours,
      this.location,
      this.facilities,
      this.languages,
      this.attachments,
      @ImageArrayConvertor() final List<String>? photos,
      @ImageConvertor() this.photo,
      this.contacts,
      this.ratingAverage,
      this.averageCheck,
      this.price,
      this.priceInDollar,
      this.address,
      @ViewTypeConvertor() this.viewType = ViewType.places})
      : _photos = photos,
        super._();

  factory _$ContentDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContentDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String? title;
  @override
  final String? description;
  @override
  final int? categoryId;
  @override
  final String? categoryName;
  @override
  final bool? isFavorite;
  @override
  final FieldDto<String?>? workingHours;
  @override
  final FieldDto<List<double>>? location;
  @override
  final FieldDto<List<FacilityItemDto>>? facilities;
  @override
  final FieldDto<List<String>>? languages;
  @override
  final FieldDto<List<AttachmentsItemDto>>? attachments;
  final List<String>? _photos;
  @override
  @ImageArrayConvertor()
  List<String>? get photos {
    final value = _photos;
    if (value == null) return null;
    if (_photos is EqualUnmodifiableListView) return _photos;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @ImageConvertor()
  final String? photo;
  @override
  final FieldDto<List<ContactsDto>>? contacts;
  @override
  final double? ratingAverage;
  @override
  final int? averageCheck;
  @override
  final double? price;
  @override
  final double? priceInDollar;
  @override
  final String? address;
  @override
  @JsonKey()
  @ViewTypeConvertor()
  final ViewType viewType;

  @override
  String toString() {
    return 'ContentDto(id: $id, title: $title, description: $description, categoryId: $categoryId, categoryName: $categoryName, isFavorite: $isFavorite, workingHours: $workingHours, location: $location, facilities: $facilities, languages: $languages, attachments: $attachments, photos: $photos, photo: $photo, contacts: $contacts, ratingAverage: $ratingAverage, averageCheck: $averageCheck, price: $price, priceInDollar: $priceInDollar, address: $address, viewType: $viewType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContentDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.isFavorite, isFavorite) ||
                other.isFavorite == isFavorite) &&
            (identical(other.workingHours, workingHours) ||
                other.workingHours == workingHours) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.facilities, facilities) ||
                other.facilities == facilities) &&
            (identical(other.languages, languages) ||
                other.languages == languages) &&
            (identical(other.attachments, attachments) ||
                other.attachments == attachments) &&
            const DeepCollectionEquality().equals(other._photos, _photos) &&
            (identical(other.photo, photo) || other.photo == photo) &&
            (identical(other.contacts, contacts) ||
                other.contacts == contacts) &&
            (identical(other.ratingAverage, ratingAverage) ||
                other.ratingAverage == ratingAverage) &&
            (identical(other.averageCheck, averageCheck) ||
                other.averageCheck == averageCheck) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.priceInDollar, priceInDollar) ||
                other.priceInDollar == priceInDollar) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.viewType, viewType) ||
                other.viewType == viewType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        title,
        description,
        categoryId,
        categoryName,
        isFavorite,
        workingHours,
        location,
        facilities,
        languages,
        attachments,
        const DeepCollectionEquality().hash(_photos),
        photo,
        contacts,
        ratingAverage,
        averageCheck,
        price,
        priceInDollar,
        address,
        viewType
      ]);

  /// Create a copy of ContentDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContentDtoImplCopyWith<_$ContentDtoImpl> get copyWith =>
      __$$ContentDtoImplCopyWithImpl<_$ContentDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContentDtoImplToJson(
      this,
    );
  }
}

abstract class _ContentDto extends ContentDto {
  const factory _ContentDto(
      {required final int id,
      final String? title,
      final String? description,
      final int? categoryId,
      final String? categoryName,
      final bool? isFavorite,
      final FieldDto<String?>? workingHours,
      final FieldDto<List<double>>? location,
      final FieldDto<List<FacilityItemDto>>? facilities,
      final FieldDto<List<String>>? languages,
      final FieldDto<List<AttachmentsItemDto>>? attachments,
      @ImageArrayConvertor() final List<String>? photos,
      @ImageConvertor() final String? photo,
      final FieldDto<List<ContactsDto>>? contacts,
      final double? ratingAverage,
      final int? averageCheck,
      final double? price,
      final double? priceInDollar,
      final String? address,
      @ViewTypeConvertor() final ViewType viewType}) = _$ContentDtoImpl;
  const _ContentDto._() : super._();

  factory _ContentDto.fromJson(Map<String, dynamic> json) =
      _$ContentDtoImpl.fromJson;

  @override
  int get id;
  @override
  String? get title;
  @override
  String? get description;
  @override
  int? get categoryId;
  @override
  String? get categoryName;
  @override
  bool? get isFavorite;
  @override
  FieldDto<String?>? get workingHours;
  @override
  FieldDto<List<double>>? get location;
  @override
  FieldDto<List<FacilityItemDto>>? get facilities;
  @override
  FieldDto<List<String>>? get languages;
  @override
  FieldDto<List<AttachmentsItemDto>>? get attachments;
  @override
  @ImageArrayConvertor()
  List<String>? get photos;
  @override
  @ImageConvertor()
  String? get photo;
  @override
  FieldDto<List<ContactsDto>>? get contacts;
  @override
  double? get ratingAverage;
  @override
  int? get averageCheck;
  @override
  double? get price;
  @override
  double? get priceInDollar;
  @override
  String? get address;
  @override
  @ViewTypeConvertor()
  ViewType get viewType;

  /// Create a copy of ContentDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContentDtoImplCopyWith<_$ContentDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

FacilityItemDto _$FacilityItemDtoFromJson(Map<String, dynamic> json) {
  return _FacilityItemDto.fromJson(json);
}

/// @nodoc
mixin _$FacilityItemDto {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @ImageConvertor()
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this FacilityItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FacilityItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FacilityItemDtoCopyWith<FacilityItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FacilityItemDtoCopyWith<$Res> {
  factory $FacilityItemDtoCopyWith(
          FacilityItemDto value, $Res Function(FacilityItemDto) then) =
      _$FacilityItemDtoCopyWithImpl<$Res, FacilityItemDto>;
  @useResult
  $Res call({int id, String name, @ImageConvertor() String? icon});
}

/// @nodoc
class _$FacilityItemDtoCopyWithImpl<$Res, $Val extends FacilityItemDto>
    implements $FacilityItemDtoCopyWith<$Res> {
  _$FacilityItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FacilityItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FacilityItemDtoImplCopyWith<$Res>
    implements $FacilityItemDtoCopyWith<$Res> {
  factory _$$FacilityItemDtoImplCopyWith(_$FacilityItemDtoImpl value,
          $Res Function(_$FacilityItemDtoImpl) then) =
      __$$FacilityItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, @ImageConvertor() String? icon});
}

/// @nodoc
class __$$FacilityItemDtoImplCopyWithImpl<$Res>
    extends _$FacilityItemDtoCopyWithImpl<$Res, _$FacilityItemDtoImpl>
    implements _$$FacilityItemDtoImplCopyWith<$Res> {
  __$$FacilityItemDtoImplCopyWithImpl(
      _$FacilityItemDtoImpl _value, $Res Function(_$FacilityItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of FacilityItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = freezed,
  }) {
    return _then(_$FacilityItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FacilityItemDtoImpl implements _FacilityItemDto {
  const _$FacilityItemDtoImpl(
      {required this.id, required this.name, @ImageConvertor() this.icon});

  factory _$FacilityItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$FacilityItemDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  @ImageConvertor()
  final String? icon;

  @override
  String toString() {
    return 'FacilityItemDto(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FacilityItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  /// Create a copy of FacilityItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FacilityItemDtoImplCopyWith<_$FacilityItemDtoImpl> get copyWith =>
      __$$FacilityItemDtoImplCopyWithImpl<_$FacilityItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FacilityItemDtoImplToJson(
      this,
    );
  }
}

abstract class _FacilityItemDto implements FacilityItemDto {
  const factory _FacilityItemDto(
      {required final int id,
      required final String name,
      @ImageConvertor() final String? icon}) = _$FacilityItemDtoImpl;

  factory _FacilityItemDto.fromJson(Map<String, dynamic> json) =
      _$FacilityItemDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @ImageConvertor()
  String? get icon;

  /// Create a copy of FacilityItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FacilityItemDtoImplCopyWith<_$FacilityItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

AttachmentsItemDto _$AttachmentsItemDtoFromJson(Map<String, dynamic> json) {
  return _AttachmentsItemDto.fromJson(json);
}

/// @nodoc
mixin _$AttachmentsItemDto {
  @ImageConvertor()
  String? get icon => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @ImageConvertor()
  String? get files => throw _privateConstructorUsedError;

  /// Serializes this AttachmentsItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AttachmentsItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AttachmentsItemDtoCopyWith<AttachmentsItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AttachmentsItemDtoCopyWith<$Res> {
  factory $AttachmentsItemDtoCopyWith(
          AttachmentsItemDto value, $Res Function(AttachmentsItemDto) then) =
      _$AttachmentsItemDtoCopyWithImpl<$Res, AttachmentsItemDto>;
  @useResult
  $Res call(
      {@ImageConvertor() String? icon,
      String? name,
      @ImageConvertor() String? files});
}

/// @nodoc
class _$AttachmentsItemDtoCopyWithImpl<$Res, $Val extends AttachmentsItemDto>
    implements $AttachmentsItemDtoCopyWith<$Res> {
  _$AttachmentsItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AttachmentsItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? files = freezed,
  }) {
    return _then(_value.copyWith(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AttachmentsItemDtoImplCopyWith<$Res>
    implements $AttachmentsItemDtoCopyWith<$Res> {
  factory _$$AttachmentsItemDtoImplCopyWith(_$AttachmentsItemDtoImpl value,
          $Res Function(_$AttachmentsItemDtoImpl) then) =
      __$$AttachmentsItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@ImageConvertor() String? icon,
      String? name,
      @ImageConvertor() String? files});
}

/// @nodoc
class __$$AttachmentsItemDtoImplCopyWithImpl<$Res>
    extends _$AttachmentsItemDtoCopyWithImpl<$Res, _$AttachmentsItemDtoImpl>
    implements _$$AttachmentsItemDtoImplCopyWith<$Res> {
  __$$AttachmentsItemDtoImplCopyWithImpl(_$AttachmentsItemDtoImpl _value,
      $Res Function(_$AttachmentsItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of AttachmentsItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? files = freezed,
  }) {
    return _then(_$AttachmentsItemDtoImpl(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      files: freezed == files
          ? _value.files
          : files // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AttachmentsItemDtoImpl implements _AttachmentsItemDto {
  const _$AttachmentsItemDtoImpl(
      {@ImageConvertor() this.icon, this.name, @ImageConvertor() this.files});

  factory _$AttachmentsItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$AttachmentsItemDtoImplFromJson(json);

  @override
  @ImageConvertor()
  final String? icon;
  @override
  final String? name;
  @override
  @ImageConvertor()
  final String? files;

  @override
  String toString() {
    return 'AttachmentsItemDto(icon: $icon, name: $name, files: $files)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttachmentsItemDtoImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.files, files) || other.files == files));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, icon, name, files);

  /// Create a copy of AttachmentsItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AttachmentsItemDtoImplCopyWith<_$AttachmentsItemDtoImpl> get copyWith =>
      __$$AttachmentsItemDtoImplCopyWithImpl<_$AttachmentsItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AttachmentsItemDtoImplToJson(
      this,
    );
  }
}

abstract class _AttachmentsItemDto implements AttachmentsItemDto {
  const factory _AttachmentsItemDto(
      {@ImageConvertor() final String? icon,
      final String? name,
      @ImageConvertor() final String? files}) = _$AttachmentsItemDtoImpl;

  factory _AttachmentsItemDto.fromJson(Map<String, dynamic> json) =
      _$AttachmentsItemDtoImpl.fromJson;

  @override
  @ImageConvertor()
  String? get icon;
  @override
  String? get name;
  @override
  @ImageConvertor()
  String? get files;

  /// Create a copy of AttachmentsItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AttachmentsItemDtoImplCopyWith<_$AttachmentsItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LanguageItemDto _$LanguageItemDtoFromJson(Map<String, dynamic> json) {
  return _LanguageItemDto.fromJson(json);
}

/// @nodoc
mixin _$LanguageItemDto {
  FieldDto<String?> get id => throw _privateConstructorUsedError;
  FieldDto<String?> get name => throw _privateConstructorUsedError;

  /// Serializes this LanguageItemDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LanguageItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LanguageItemDtoCopyWith<LanguageItemDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LanguageItemDtoCopyWith<$Res> {
  factory $LanguageItemDtoCopyWith(
          LanguageItemDto value, $Res Function(LanguageItemDto) then) =
      _$LanguageItemDtoCopyWithImpl<$Res, LanguageItemDto>;
  @useResult
  $Res call({FieldDto<String?> id, FieldDto<String?> name});
}

/// @nodoc
class _$LanguageItemDtoCopyWithImpl<$Res, $Val extends LanguageItemDto>
    implements $LanguageItemDtoCopyWith<$Res> {
  _$LanguageItemDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LanguageItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FieldDto<String?>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FieldDto<String?>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LanguageItemDtoImplCopyWith<$Res>
    implements $LanguageItemDtoCopyWith<$Res> {
  factory _$$LanguageItemDtoImplCopyWith(_$LanguageItemDtoImpl value,
          $Res Function(_$LanguageItemDtoImpl) then) =
      __$$LanguageItemDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({FieldDto<String?> id, FieldDto<String?> name});
}

/// @nodoc
class __$$LanguageItemDtoImplCopyWithImpl<$Res>
    extends _$LanguageItemDtoCopyWithImpl<$Res, _$LanguageItemDtoImpl>
    implements _$$LanguageItemDtoImplCopyWith<$Res> {
  __$$LanguageItemDtoImplCopyWithImpl(
      _$LanguageItemDtoImpl _value, $Res Function(_$LanguageItemDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of LanguageItemDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
  }) {
    return _then(_$LanguageItemDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as FieldDto<String?>,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as FieldDto<String?>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LanguageItemDtoImpl implements _LanguageItemDto {
  const _$LanguageItemDtoImpl({required this.id, required this.name});

  factory _$LanguageItemDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$LanguageItemDtoImplFromJson(json);

  @override
  final FieldDto<String?> id;
  @override
  final FieldDto<String?> name;

  @override
  String toString() {
    return 'LanguageItemDto(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LanguageItemDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of LanguageItemDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LanguageItemDtoImplCopyWith<_$LanguageItemDtoImpl> get copyWith =>
      __$$LanguageItemDtoImplCopyWithImpl<_$LanguageItemDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LanguageItemDtoImplToJson(
      this,
    );
  }
}

abstract class _LanguageItemDto implements LanguageItemDto {
  const factory _LanguageItemDto(
      {required final FieldDto<String?> id,
      required final FieldDto<String?> name}) = _$LanguageItemDtoImpl;

  factory _LanguageItemDto.fromJson(Map<String, dynamic> json) =
      _$LanguageItemDtoImpl.fromJson;

  @override
  FieldDto<String?> get id;
  @override
  FieldDto<String?> get name;

  /// Create a copy of LanguageItemDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LanguageItemDtoImplCopyWith<_$LanguageItemDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactsDto _$ContactsDtoFromJson(Map<String, dynamic> json) {
  return _ContactsDto.fromJson(json);
}

/// @nodoc
mixin _$ContactsDto {
  String? get icon => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get contact => throw _privateConstructorUsedError;
  String? get action => throw _privateConstructorUsedError;

  /// Serializes this ContactsDto to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ContactsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ContactsDtoCopyWith<ContactsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsDtoCopyWith<$Res> {
  factory $ContactsDtoCopyWith(
          ContactsDto value, $Res Function(ContactsDto) then) =
      _$ContactsDtoCopyWithImpl<$Res, ContactsDto>;
  @useResult
  $Res call({String? icon, String? name, String? contact, String? action});
}

/// @nodoc
class _$ContactsDtoCopyWithImpl<$Res, $Val extends ContactsDto>
    implements $ContactsDtoCopyWith<$Res> {
  _$ContactsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ContactsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? contact = freezed,
    Object? action = freezed,
  }) {
    return _then(_value.copyWith(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ContactsDtoImplCopyWith<$Res>
    implements $ContactsDtoCopyWith<$Res> {
  factory _$$ContactsDtoImplCopyWith(
          _$ContactsDtoImpl value, $Res Function(_$ContactsDtoImpl) then) =
      __$$ContactsDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? icon, String? name, String? contact, String? action});
}

/// @nodoc
class __$$ContactsDtoImplCopyWithImpl<$Res>
    extends _$ContactsDtoCopyWithImpl<$Res, _$ContactsDtoImpl>
    implements _$$ContactsDtoImplCopyWith<$Res> {
  __$$ContactsDtoImplCopyWithImpl(
      _$ContactsDtoImpl _value, $Res Function(_$ContactsDtoImpl) _then)
      : super(_value, _then);

  /// Create a copy of ContactsDto
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = freezed,
    Object? name = freezed,
    Object? contact = freezed,
    Object? action = freezed,
  }) {
    return _then(_$ContactsDtoImpl(
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as String?,
      action: freezed == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ContactsDtoImpl implements _ContactsDto {
  const _$ContactsDtoImpl({this.icon, this.name, this.contact, this.action});

  factory _$ContactsDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ContactsDtoImplFromJson(json);

  @override
  final String? icon;
  @override
  final String? name;
  @override
  final String? contact;
  @override
  final String? action;

  @override
  String toString() {
    return 'ContactsDto(icon: $icon, name: $name, contact: $contact, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ContactsDtoImpl &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, icon, name, contact, action);

  /// Create a copy of ContactsDto
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ContactsDtoImplCopyWith<_$ContactsDtoImpl> get copyWith =>
      __$$ContactsDtoImplCopyWithImpl<_$ContactsDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ContactsDtoImplToJson(
      this,
    );
  }
}

abstract class _ContactsDto implements ContactsDto {
  const factory _ContactsDto(
      {final String? icon,
      final String? name,
      final String? contact,
      final String? action}) = _$ContactsDtoImpl;

  factory _ContactsDto.fromJson(Map<String, dynamic> json) =
      _$ContactsDtoImpl.fromJson;

  @override
  String? get icon;
  @override
  String? get name;
  @override
  String? get contact;
  @override
  String? get action;

  /// Create a copy of ContactsDto
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ContactsDtoImplCopyWith<_$ContactsDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

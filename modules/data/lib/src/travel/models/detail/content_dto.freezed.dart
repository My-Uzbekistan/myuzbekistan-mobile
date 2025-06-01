// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContentDto {

 int get id; String? get title; String? get description; int? get categoryId; String? get categoryName; bool? get isFavorite; FieldDto<String?>? get workingHours; FieldDto<List<double>>? get location; FieldDto<List<FacilityItemDto>>? get facilities; FieldDto<List<String>>? get languages; FieldDto<List<AttachmentsItemDto>>? get attachments;@ImageArrayConvertor() List<String>? get photos;@ImageConvertor() String? get photo; FieldDto<List<ContactsDto>>? get contacts; double? get ratingAverage; int? get averageCheck; double? get price; double? get priceInDollar; String? get address; String? get region; double? get distance; int? get reviewCount;@ViewTypeConvertor() ViewType get viewType;
/// Create a copy of ContentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentDtoCopyWith<ContentDto> get copyWith => _$ContentDtoCopyWithImpl<ContentDto>(this as ContentDto, _$identity);

  /// Serializes this ContentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&(identical(other.location, location) || other.location == location)&&(identical(other.facilities, facilities) || other.facilities == facilities)&&(identical(other.languages, languages) || other.languages == languages)&&(identical(other.attachments, attachments) || other.attachments == attachments)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.contacts, contacts) || other.contacts == contacts)&&(identical(other.ratingAverage, ratingAverage) || other.ratingAverage == ratingAverage)&&(identical(other.averageCheck, averageCheck) || other.averageCheck == averageCheck)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceInDollar, priceInDollar) || other.priceInDollar == priceInDollar)&&(identical(other.address, address) || other.address == address)&&(identical(other.region, region) || other.region == region)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.viewType, viewType) || other.viewType == viewType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,categoryId,categoryName,isFavorite,workingHours,location,facilities,languages,attachments,const DeepCollectionEquality().hash(photos),photo,contacts,ratingAverage,averageCheck,price,priceInDollar,address,region,distance,reviewCount,viewType]);

@override
String toString() {
  return 'ContentDto(id: $id, title: $title, description: $description, categoryId: $categoryId, categoryName: $categoryName, isFavorite: $isFavorite, workingHours: $workingHours, location: $location, facilities: $facilities, languages: $languages, attachments: $attachments, photos: $photos, photo: $photo, contacts: $contacts, ratingAverage: $ratingAverage, averageCheck: $averageCheck, price: $price, priceInDollar: $priceInDollar, address: $address, region: $region, distance: $distance, reviewCount: $reviewCount, viewType: $viewType)';
}


}

/// @nodoc
abstract mixin class $ContentDtoCopyWith<$Res>  {
  factory $ContentDtoCopyWith(ContentDto value, $Res Function(ContentDto) _then) = _$ContentDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? title, String? description, int? categoryId, String? categoryName, bool? isFavorite, FieldDto<String?>? workingHours, FieldDto<List<double>>? location, FieldDto<List<FacilityItemDto>>? facilities, FieldDto<List<String>>? languages, FieldDto<List<AttachmentsItemDto>>? attachments,@ImageArrayConvertor() List<String>? photos,@ImageConvertor() String? photo, FieldDto<List<ContactsDto>>? contacts, double? ratingAverage, int? averageCheck, double? price, double? priceInDollar, String? address, String? region, double? distance, int? reviewCount,@ViewTypeConvertor() ViewType viewType
});




}
/// @nodoc
class _$ContentDtoCopyWithImpl<$Res>
    implements $ContentDtoCopyWith<$Res> {
  _$ContentDtoCopyWithImpl(this._self, this._then);

  final ContentDto _self;
  final $Res Function(ContentDto) _then;

/// Create a copy of ContentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = freezed,Object? description = freezed,Object? categoryId = freezed,Object? categoryName = freezed,Object? isFavorite = freezed,Object? workingHours = freezed,Object? location = freezed,Object? facilities = freezed,Object? languages = freezed,Object? attachments = freezed,Object? photos = freezed,Object? photo = freezed,Object? contacts = freezed,Object? ratingAverage = freezed,Object? averageCheck = freezed,Object? price = freezed,Object? priceInDollar = freezed,Object? address = freezed,Object? region = freezed,Object? distance = freezed,Object? reviewCount = freezed,Object? viewType = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,workingHours: freezed == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as FieldDto<String?>?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as FieldDto<List<double>>?,facilities: freezed == facilities ? _self.facilities : facilities // ignore: cast_nullable_to_non_nullable
as FieldDto<List<FacilityItemDto>>?,languages: freezed == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as FieldDto<List<String>>?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as FieldDto<List<AttachmentsItemDto>>?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,contacts: freezed == contacts ? _self.contacts : contacts // ignore: cast_nullable_to_non_nullable
as FieldDto<List<ContactsDto>>?,ratingAverage: freezed == ratingAverage ? _self.ratingAverage : ratingAverage // ignore: cast_nullable_to_non_nullable
as double?,averageCheck: freezed == averageCheck ? _self.averageCheck : averageCheck // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,priceInDollar: freezed == priceInDollar ? _self.priceInDollar : priceInDollar // ignore: cast_nullable_to_non_nullable
as double?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as ViewType,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ContentDto extends ContentDto {
  const _ContentDto({required this.id, this.title, this.description, this.categoryId, this.categoryName, this.isFavorite, this.workingHours, this.location, this.facilities, this.languages, this.attachments, @ImageArrayConvertor() final  List<String>? photos, @ImageConvertor() this.photo, this.contacts, this.ratingAverage, this.averageCheck, this.price, this.priceInDollar, this.address, this.region, this.distance, this.reviewCount, @ViewTypeConvertor() this.viewType = ViewType.places}): _photos = photos,super._();
  factory _ContentDto.fromJson(Map<String, dynamic> json) => _$ContentDtoFromJson(json);

@override final  int id;
@override final  String? title;
@override final  String? description;
@override final  int? categoryId;
@override final  String? categoryName;
@override final  bool? isFavorite;
@override final  FieldDto<String?>? workingHours;
@override final  FieldDto<List<double>>? location;
@override final  FieldDto<List<FacilityItemDto>>? facilities;
@override final  FieldDto<List<String>>? languages;
@override final  FieldDto<List<AttachmentsItemDto>>? attachments;
 final  List<String>? _photos;
@override@ImageArrayConvertor() List<String>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@ImageConvertor() final  String? photo;
@override final  FieldDto<List<ContactsDto>>? contacts;
@override final  double? ratingAverage;
@override final  int? averageCheck;
@override final  double? price;
@override final  double? priceInDollar;
@override final  String? address;
@override final  String? region;
@override final  double? distance;
@override final  int? reviewCount;
@override@JsonKey()@ViewTypeConvertor() final  ViewType viewType;

/// Create a copy of ContentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentDtoCopyWith<_ContentDto> get copyWith => __$ContentDtoCopyWithImpl<_ContentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&(identical(other.location, location) || other.location == location)&&(identical(other.facilities, facilities) || other.facilities == facilities)&&(identical(other.languages, languages) || other.languages == languages)&&(identical(other.attachments, attachments) || other.attachments == attachments)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.contacts, contacts) || other.contacts == contacts)&&(identical(other.ratingAverage, ratingAverage) || other.ratingAverage == ratingAverage)&&(identical(other.averageCheck, averageCheck) || other.averageCheck == averageCheck)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceInDollar, priceInDollar) || other.priceInDollar == priceInDollar)&&(identical(other.address, address) || other.address == address)&&(identical(other.region, region) || other.region == region)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.viewType, viewType) || other.viewType == viewType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,description,categoryId,categoryName,isFavorite,workingHours,location,facilities,languages,attachments,const DeepCollectionEquality().hash(_photos),photo,contacts,ratingAverage,averageCheck,price,priceInDollar,address,region,distance,reviewCount,viewType]);

@override
String toString() {
  return 'ContentDto(id: $id, title: $title, description: $description, categoryId: $categoryId, categoryName: $categoryName, isFavorite: $isFavorite, workingHours: $workingHours, location: $location, facilities: $facilities, languages: $languages, attachments: $attachments, photos: $photos, photo: $photo, contacts: $contacts, ratingAverage: $ratingAverage, averageCheck: $averageCheck, price: $price, priceInDollar: $priceInDollar, address: $address, region: $region, distance: $distance, reviewCount: $reviewCount, viewType: $viewType)';
}


}

/// @nodoc
abstract mixin class _$ContentDtoCopyWith<$Res> implements $ContentDtoCopyWith<$Res> {
  factory _$ContentDtoCopyWith(_ContentDto value, $Res Function(_ContentDto) _then) = __$ContentDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? title, String? description, int? categoryId, String? categoryName, bool? isFavorite, FieldDto<String?>? workingHours, FieldDto<List<double>>? location, FieldDto<List<FacilityItemDto>>? facilities, FieldDto<List<String>>? languages, FieldDto<List<AttachmentsItemDto>>? attachments,@ImageArrayConvertor() List<String>? photos,@ImageConvertor() String? photo, FieldDto<List<ContactsDto>>? contacts, double? ratingAverage, int? averageCheck, double? price, double? priceInDollar, String? address, String? region, double? distance, int? reviewCount,@ViewTypeConvertor() ViewType viewType
});




}
/// @nodoc
class __$ContentDtoCopyWithImpl<$Res>
    implements _$ContentDtoCopyWith<$Res> {
  __$ContentDtoCopyWithImpl(this._self, this._then);

  final _ContentDto _self;
  final $Res Function(_ContentDto) _then;

/// Create a copy of ContentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = freezed,Object? description = freezed,Object? categoryId = freezed,Object? categoryName = freezed,Object? isFavorite = freezed,Object? workingHours = freezed,Object? location = freezed,Object? facilities = freezed,Object? languages = freezed,Object? attachments = freezed,Object? photos = freezed,Object? photo = freezed,Object? contacts = freezed,Object? ratingAverage = freezed,Object? averageCheck = freezed,Object? price = freezed,Object? priceInDollar = freezed,Object? address = freezed,Object? region = freezed,Object? distance = freezed,Object? reviewCount = freezed,Object? viewType = null,}) {
  return _then(_ContentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,workingHours: freezed == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as FieldDto<String?>?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as FieldDto<List<double>>?,facilities: freezed == facilities ? _self.facilities : facilities // ignore: cast_nullable_to_non_nullable
as FieldDto<List<FacilityItemDto>>?,languages: freezed == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as FieldDto<List<String>>?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as FieldDto<List<AttachmentsItemDto>>?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,contacts: freezed == contacts ? _self.contacts : contacts // ignore: cast_nullable_to_non_nullable
as FieldDto<List<ContactsDto>>?,ratingAverage: freezed == ratingAverage ? _self.ratingAverage : ratingAverage // ignore: cast_nullable_to_non_nullable
as double?,averageCheck: freezed == averageCheck ? _self.averageCheck : averageCheck // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,priceInDollar: freezed == priceInDollar ? _self.priceInDollar : priceInDollar // ignore: cast_nullable_to_non_nullable
as double?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as ViewType,
  ));
}


}


/// @nodoc
mixin _$FacilityItemDto {

 int get id; String get name;@ImageConvertor() String? get icon;
/// Create a copy of FacilityItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacilityItemDtoCopyWith<FacilityItemDto> get copyWith => _$FacilityItemDtoCopyWithImpl<FacilityItemDto>(this as FacilityItemDto, _$identity);

  /// Serializes this FacilityItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacilityItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon);

@override
String toString() {
  return 'FacilityItemDto(id: $id, name: $name, icon: $icon)';
}


}

/// @nodoc
abstract mixin class $FacilityItemDtoCopyWith<$Res>  {
  factory $FacilityItemDtoCopyWith(FacilityItemDto value, $Res Function(FacilityItemDto) _then) = _$FacilityItemDtoCopyWithImpl;
@useResult
$Res call({
 int id, String name,@ImageConvertor() String? icon
});




}
/// @nodoc
class _$FacilityItemDtoCopyWithImpl<$Res>
    implements $FacilityItemDtoCopyWith<$Res> {
  _$FacilityItemDtoCopyWithImpl(this._self, this._then);

  final FacilityItemDto _self;
  final $Res Function(FacilityItemDto) _then;

/// Create a copy of FacilityItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? icon = freezed,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _FacilityItemDto implements FacilityItemDto {
  const _FacilityItemDto({required this.id, required this.name, @ImageConvertor() this.icon});
  factory _FacilityItemDto.fromJson(Map<String, dynamic> json) => _$FacilityItemDtoFromJson(json);

@override final  int id;
@override final  String name;
@override@ImageConvertor() final  String? icon;

/// Create a copy of FacilityItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FacilityItemDtoCopyWith<_FacilityItemDto> get copyWith => __$FacilityItemDtoCopyWithImpl<_FacilityItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FacilityItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FacilityItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.icon, icon) || other.icon == icon));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,icon);

@override
String toString() {
  return 'FacilityItemDto(id: $id, name: $name, icon: $icon)';
}


}

/// @nodoc
abstract mixin class _$FacilityItemDtoCopyWith<$Res> implements $FacilityItemDtoCopyWith<$Res> {
  factory _$FacilityItemDtoCopyWith(_FacilityItemDto value, $Res Function(_FacilityItemDto) _then) = __$FacilityItemDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String name,@ImageConvertor() String? icon
});




}
/// @nodoc
class __$FacilityItemDtoCopyWithImpl<$Res>
    implements _$FacilityItemDtoCopyWith<$Res> {
  __$FacilityItemDtoCopyWithImpl(this._self, this._then);

  final _FacilityItemDto _self;
  final $Res Function(_FacilityItemDto) _then;

/// Create a copy of FacilityItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? icon = freezed,}) {
  return _then(_FacilityItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AttachmentsItemDto {

@ImageConvertor() String? get icon; String? get name;@ImageConvertor() String? get files;
/// Create a copy of AttachmentsItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AttachmentsItemDtoCopyWith<AttachmentsItemDto> get copyWith => _$AttachmentsItemDtoCopyWithImpl<AttachmentsItemDto>(this as AttachmentsItemDto, _$identity);

  /// Serializes this AttachmentsItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AttachmentsItemDto&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.name, name) || other.name == name)&&(identical(other.files, files) || other.files == files));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon,name,files);

@override
String toString() {
  return 'AttachmentsItemDto(icon: $icon, name: $name, files: $files)';
}


}

/// @nodoc
abstract mixin class $AttachmentsItemDtoCopyWith<$Res>  {
  factory $AttachmentsItemDtoCopyWith(AttachmentsItemDto value, $Res Function(AttachmentsItemDto) _then) = _$AttachmentsItemDtoCopyWithImpl;
@useResult
$Res call({
@ImageConvertor() String? icon, String? name,@ImageConvertor() String? files
});




}
/// @nodoc
class _$AttachmentsItemDtoCopyWithImpl<$Res>
    implements $AttachmentsItemDtoCopyWith<$Res> {
  _$AttachmentsItemDtoCopyWithImpl(this._self, this._then);

  final AttachmentsItemDto _self;
  final $Res Function(AttachmentsItemDto) _then;

/// Create a copy of AttachmentsItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = freezed,Object? name = freezed,Object? files = freezed,}) {
  return _then(_self.copyWith(
icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,files: freezed == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _AttachmentsItemDto implements AttachmentsItemDto {
  const _AttachmentsItemDto({@ImageConvertor() this.icon, this.name, @ImageConvertor() this.files});
  factory _AttachmentsItemDto.fromJson(Map<String, dynamic> json) => _$AttachmentsItemDtoFromJson(json);

@override@ImageConvertor() final  String? icon;
@override final  String? name;
@override@ImageConvertor() final  String? files;

/// Create a copy of AttachmentsItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AttachmentsItemDtoCopyWith<_AttachmentsItemDto> get copyWith => __$AttachmentsItemDtoCopyWithImpl<_AttachmentsItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AttachmentsItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AttachmentsItemDto&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.name, name) || other.name == name)&&(identical(other.files, files) || other.files == files));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon,name,files);

@override
String toString() {
  return 'AttachmentsItemDto(icon: $icon, name: $name, files: $files)';
}


}

/// @nodoc
abstract mixin class _$AttachmentsItemDtoCopyWith<$Res> implements $AttachmentsItemDtoCopyWith<$Res> {
  factory _$AttachmentsItemDtoCopyWith(_AttachmentsItemDto value, $Res Function(_AttachmentsItemDto) _then) = __$AttachmentsItemDtoCopyWithImpl;
@override @useResult
$Res call({
@ImageConvertor() String? icon, String? name,@ImageConvertor() String? files
});




}
/// @nodoc
class __$AttachmentsItemDtoCopyWithImpl<$Res>
    implements _$AttachmentsItemDtoCopyWith<$Res> {
  __$AttachmentsItemDtoCopyWithImpl(this._self, this._then);

  final _AttachmentsItemDto _self;
  final $Res Function(_AttachmentsItemDto) _then;

/// Create a copy of AttachmentsItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = freezed,Object? name = freezed,Object? files = freezed,}) {
  return _then(_AttachmentsItemDto(
icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,files: freezed == files ? _self.files : files // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$LanguageItemDto {

 FieldDto<String?> get id; FieldDto<String?> get name;
/// Create a copy of LanguageItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LanguageItemDtoCopyWith<LanguageItemDto> get copyWith => _$LanguageItemDtoCopyWithImpl<LanguageItemDto>(this as LanguageItemDto, _$identity);

  /// Serializes this LanguageItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LanguageItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'LanguageItemDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class $LanguageItemDtoCopyWith<$Res>  {
  factory $LanguageItemDtoCopyWith(LanguageItemDto value, $Res Function(LanguageItemDto) _then) = _$LanguageItemDtoCopyWithImpl;
@useResult
$Res call({
 FieldDto<String?> id, FieldDto<String?> name
});




}
/// @nodoc
class _$LanguageItemDtoCopyWithImpl<$Res>
    implements $LanguageItemDtoCopyWith<$Res> {
  _$LanguageItemDtoCopyWithImpl(this._self, this._then);

  final LanguageItemDto _self;
  final $Res Function(LanguageItemDto) _then;

/// Create a copy of LanguageItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as FieldDto<String?>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FieldDto<String?>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _LanguageItemDto implements LanguageItemDto {
  const _LanguageItemDto({required this.id, required this.name});
  factory _LanguageItemDto.fromJson(Map<String, dynamic> json) => _$LanguageItemDtoFromJson(json);

@override final  FieldDto<String?> id;
@override final  FieldDto<String?> name;

/// Create a copy of LanguageItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LanguageItemDtoCopyWith<_LanguageItemDto> get copyWith => __$LanguageItemDtoCopyWithImpl<_LanguageItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LanguageItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LanguageItemDto&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name);

@override
String toString() {
  return 'LanguageItemDto(id: $id, name: $name)';
}


}

/// @nodoc
abstract mixin class _$LanguageItemDtoCopyWith<$Res> implements $LanguageItemDtoCopyWith<$Res> {
  factory _$LanguageItemDtoCopyWith(_LanguageItemDto value, $Res Function(_LanguageItemDto) _then) = __$LanguageItemDtoCopyWithImpl;
@override @useResult
$Res call({
 FieldDto<String?> id, FieldDto<String?> name
});




}
/// @nodoc
class __$LanguageItemDtoCopyWithImpl<$Res>
    implements _$LanguageItemDtoCopyWith<$Res> {
  __$LanguageItemDtoCopyWithImpl(this._self, this._then);

  final _LanguageItemDto _self;
  final $Res Function(_LanguageItemDto) _then;

/// Create a copy of LanguageItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,}) {
  return _then(_LanguageItemDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as FieldDto<String?>,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as FieldDto<String?>,
  ));
}


}


/// @nodoc
mixin _$ContactsDto {

@ImageConvertor() String? get icon; String? get name; String? get contact; String? get action;
/// Create a copy of ContactsDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContactsDtoCopyWith<ContactsDto> get copyWith => _$ContactsDtoCopyWithImpl<ContactsDto>(this as ContactsDto, _$identity);

  /// Serializes this ContactsDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContactsDto&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.name, name) || other.name == name)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon,name,contact,action);

@override
String toString() {
  return 'ContactsDto(icon: $icon, name: $name, contact: $contact, action: $action)';
}


}

/// @nodoc
abstract mixin class $ContactsDtoCopyWith<$Res>  {
  factory $ContactsDtoCopyWith(ContactsDto value, $Res Function(ContactsDto) _then) = _$ContactsDtoCopyWithImpl;
@useResult
$Res call({
@ImageConvertor() String? icon, String? name, String? contact, String? action
});




}
/// @nodoc
class _$ContactsDtoCopyWithImpl<$Res>
    implements $ContactsDtoCopyWith<$Res> {
  _$ContactsDtoCopyWithImpl(this._self, this._then);

  final ContactsDto _self;
  final $Res Function(ContactsDto) _then;

/// Create a copy of ContactsDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? icon = freezed,Object? name = freezed,Object? contact = freezed,Object? action = freezed,}) {
  return _then(_self.copyWith(
icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _ContactsDto implements ContactsDto {
  const _ContactsDto({@ImageConvertor() this.icon, this.name, this.contact, this.action});
  factory _ContactsDto.fromJson(Map<String, dynamic> json) => _$ContactsDtoFromJson(json);

@override@ImageConvertor() final  String? icon;
@override final  String? name;
@override final  String? contact;
@override final  String? action;

/// Create a copy of ContactsDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContactsDtoCopyWith<_ContactsDto> get copyWith => __$ContactsDtoCopyWithImpl<_ContactsDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContactsDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContactsDto&&(identical(other.icon, icon) || other.icon == icon)&&(identical(other.name, name) || other.name == name)&&(identical(other.contact, contact) || other.contact == contact)&&(identical(other.action, action) || other.action == action));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,icon,name,contact,action);

@override
String toString() {
  return 'ContactsDto(icon: $icon, name: $name, contact: $contact, action: $action)';
}


}

/// @nodoc
abstract mixin class _$ContactsDtoCopyWith<$Res> implements $ContactsDtoCopyWith<$Res> {
  factory _$ContactsDtoCopyWith(_ContactsDto value, $Res Function(_ContactsDto) _then) = __$ContactsDtoCopyWithImpl;
@override @useResult
$Res call({
@ImageConvertor() String? icon, String? name, String? contact, String? action
});




}
/// @nodoc
class __$ContactsDtoCopyWithImpl<$Res>
    implements _$ContactsDtoCopyWith<$Res> {
  __$ContactsDtoCopyWithImpl(this._self, this._then);

  final _ContactsDto _self;
  final $Res Function(_ContactsDto) _then;

/// Create a copy of ContactsDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? icon = freezed,Object? name = freezed,Object? contact = freezed,Object? action = freezed,}) {
  return _then(_ContactsDto(
icon: freezed == icon ? _self.icon : icon // ignore: cast_nullable_to_non_nullable
as String?,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,contact: freezed == contact ? _self.contact : contact // ignore: cast_nullable_to_non_nullable
as String?,action: freezed == action ? _self.action : action // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'content_dto_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContentCategoriesDto {

 int get categoryId; String get categoryName; int get viewType; MainPageContentDto? get recommended; List<MainPageContentDto> get contents;
/// Create a copy of ContentCategoriesDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentCategoriesDtoCopyWith<ContentCategoriesDto> get copyWith => _$ContentCategoriesDtoCopyWithImpl<ContentCategoriesDto>(this as ContentCategoriesDto, _$identity);

  /// Serializes this ContentCategoriesDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentCategoriesDto&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.viewType, viewType) || other.viewType == viewType)&&(identical(other.recommended, recommended) || other.recommended == recommended)&&const DeepCollectionEquality().equals(other.contents, contents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,categoryName,viewType,recommended,const DeepCollectionEquality().hash(contents));

@override
String toString() {
  return 'ContentCategoriesDto(categoryId: $categoryId, categoryName: $categoryName, viewType: $viewType, recommended: $recommended, contents: $contents)';
}


}

/// @nodoc
abstract mixin class $ContentCategoriesDtoCopyWith<$Res>  {
  factory $ContentCategoriesDtoCopyWith(ContentCategoriesDto value, $Res Function(ContentCategoriesDto) _then) = _$ContentCategoriesDtoCopyWithImpl;
@useResult
$Res call({
 int categoryId, String categoryName, int viewType, MainPageContentDto? recommended, List<MainPageContentDto> contents
});


$MainPageContentDtoCopyWith<$Res>? get recommended;

}
/// @nodoc
class _$ContentCategoriesDtoCopyWithImpl<$Res>
    implements $ContentCategoriesDtoCopyWith<$Res> {
  _$ContentCategoriesDtoCopyWithImpl(this._self, this._then);

  final ContentCategoriesDto _self;
  final $Res Function(ContentCategoriesDto) _then;

/// Create a copy of ContentCategoriesDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categoryId = null,Object? categoryName = null,Object? viewType = null,Object? recommended = freezed,Object? contents = null,}) {
  return _then(_self.copyWith(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as int,recommended: freezed == recommended ? _self.recommended : recommended // ignore: cast_nullable_to_non_nullable
as MainPageContentDto?,contents: null == contents ? _self.contents : contents // ignore: cast_nullable_to_non_nullable
as List<MainPageContentDto>,
  ));
}
/// Create a copy of ContentCategoriesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainPageContentDtoCopyWith<$Res>? get recommended {
    if (_self.recommended == null) {
    return null;
  }

  return $MainPageContentDtoCopyWith<$Res>(_self.recommended!, (value) {
    return _then(_self.copyWith(recommended: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _ContentCategoriesDto extends ContentCategoriesDto {
  const _ContentCategoriesDto({required this.categoryId, required this.categoryName, this.viewType = 0, this.recommended, final  List<MainPageContentDto> contents = const []}): _contents = contents,super._();
  factory _ContentCategoriesDto.fromJson(Map<String, dynamic> json) => _$ContentCategoriesDtoFromJson(json);

@override final  int categoryId;
@override final  String categoryName;
@override@JsonKey() final  int viewType;
@override final  MainPageContentDto? recommended;
 final  List<MainPageContentDto> _contents;
@override@JsonKey() List<MainPageContentDto> get contents {
  if (_contents is EqualUnmodifiableListView) return _contents;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_contents);
}


/// Create a copy of ContentCategoriesDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ContentCategoriesDtoCopyWith<_ContentCategoriesDto> get copyWith => __$ContentCategoriesDtoCopyWithImpl<_ContentCategoriesDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ContentCategoriesDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentCategoriesDto&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.viewType, viewType) || other.viewType == viewType)&&(identical(other.recommended, recommended) || other.recommended == recommended)&&const DeepCollectionEquality().equals(other._contents, _contents));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,categoryId,categoryName,viewType,recommended,const DeepCollectionEquality().hash(_contents));

@override
String toString() {
  return 'ContentCategoriesDto(categoryId: $categoryId, categoryName: $categoryName, viewType: $viewType, recommended: $recommended, contents: $contents)';
}


}

/// @nodoc
abstract mixin class _$ContentCategoriesDtoCopyWith<$Res> implements $ContentCategoriesDtoCopyWith<$Res> {
  factory _$ContentCategoriesDtoCopyWith(_ContentCategoriesDto value, $Res Function(_ContentCategoriesDto) _then) = __$ContentCategoriesDtoCopyWithImpl;
@override @useResult
$Res call({
 int categoryId, String categoryName, int viewType, MainPageContentDto? recommended, List<MainPageContentDto> contents
});


@override $MainPageContentDtoCopyWith<$Res>? get recommended;

}
/// @nodoc
class __$ContentCategoriesDtoCopyWithImpl<$Res>
    implements _$ContentCategoriesDtoCopyWith<$Res> {
  __$ContentCategoriesDtoCopyWithImpl(this._self, this._then);

  final _ContentCategoriesDto _self;
  final $Res Function(_ContentCategoriesDto) _then;

/// Create a copy of ContentCategoriesDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categoryId = null,Object? categoryName = null,Object? viewType = null,Object? recommended = freezed,Object? contents = null,}) {
  return _then(_ContentCategoriesDto(
categoryId: null == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int,categoryName: null == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as int,recommended: freezed == recommended ? _self.recommended : recommended // ignore: cast_nullable_to_non_nullable
as MainPageContentDto?,contents: null == contents ? _self._contents : contents // ignore: cast_nullable_to_non_nullable
as List<MainPageContentDto>,
  ));
}

/// Create a copy of ContentCategoriesDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MainPageContentDtoCopyWith<$Res>? get recommended {
    if (_self.recommended == null) {
    return null;
  }

  return $MainPageContentDtoCopyWith<$Res>(_self.recommended!, (value) {
    return _then(_self.copyWith(recommended: value));
  });
}
}


/// @nodoc
mixin _$TemperatureDto {

 String? get temperature; String? get condition; String? get iconUrl;
/// Create a copy of TemperatureDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TemperatureDtoCopyWith<TemperatureDto> get copyWith => _$TemperatureDtoCopyWithImpl<TemperatureDto>(this as TemperatureDto, _$identity);

  /// Serializes this TemperatureDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TemperatureDto&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,condition,iconUrl);

@override
String toString() {
  return 'TemperatureDto(temperature: $temperature, condition: $condition, iconUrl: $iconUrl)';
}


}

/// @nodoc
abstract mixin class $TemperatureDtoCopyWith<$Res>  {
  factory $TemperatureDtoCopyWith(TemperatureDto value, $Res Function(TemperatureDto) _then) = _$TemperatureDtoCopyWithImpl;
@useResult
$Res call({
 String? temperature, String? condition, String? iconUrl
});




}
/// @nodoc
class _$TemperatureDtoCopyWithImpl<$Res>
    implements $TemperatureDtoCopyWith<$Res> {
  _$TemperatureDtoCopyWithImpl(this._self, this._then);

  final TemperatureDto _self;
  final $Res Function(TemperatureDto) _then;

/// Create a copy of TemperatureDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? temperature = freezed,Object? condition = freezed,Object? iconUrl = freezed,}) {
  return _then(_self.copyWith(
temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _TemperatureDto extends TemperatureDto {
  const _TemperatureDto({this.temperature, this.condition, this.iconUrl}): super._();
  factory _TemperatureDto.fromJson(Map<String, dynamic> json) => _$TemperatureDtoFromJson(json);

@override final  String? temperature;
@override final  String? condition;
@override final  String? iconUrl;

/// Create a copy of TemperatureDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$TemperatureDtoCopyWith<_TemperatureDto> get copyWith => __$TemperatureDtoCopyWithImpl<_TemperatureDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$TemperatureDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _TemperatureDto&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.condition, condition) || other.condition == condition)&&(identical(other.iconUrl, iconUrl) || other.iconUrl == iconUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,temperature,condition,iconUrl);

@override
String toString() {
  return 'TemperatureDto(temperature: $temperature, condition: $condition, iconUrl: $iconUrl)';
}


}

/// @nodoc
abstract mixin class _$TemperatureDtoCopyWith<$Res> implements $TemperatureDtoCopyWith<$Res> {
  factory _$TemperatureDtoCopyWith(_TemperatureDto value, $Res Function(_TemperatureDto) _then) = __$TemperatureDtoCopyWithImpl;
@override @useResult
$Res call({
 String? temperature, String? condition, String? iconUrl
});




}
/// @nodoc
class __$TemperatureDtoCopyWithImpl<$Res>
    implements _$TemperatureDtoCopyWith<$Res> {
  __$TemperatureDtoCopyWithImpl(this._self, this._then);

  final _TemperatureDto _self;
  final $Res Function(_TemperatureDto) _then;

/// Create a copy of TemperatureDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? temperature = freezed,Object? condition = freezed,Object? iconUrl = freezed,}) {
  return _then(_TemperatureDto(
temperature: freezed == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as String?,condition: freezed == condition ? _self.condition : condition // ignore: cast_nullable_to_non_nullable
as String?,iconUrl: freezed == iconUrl ? _self.iconUrl : iconUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$MainPageContentDto {

 int get contentId; String? get title; String? get caption;@ImageArrayConvertor() List<String> get photos;@ImageConvertor() String? get photo; String? get region; String? get address; double? get distance; int? get reviewCount; List<FacilityItemDto>? get facilities; List<String>? get languages; double? get ratingAverage; int? get averageCheck; double? get price; double? get priceInDollar; bool? get isFavorite;@ViewTypeConvertor() ViewType get viewType;
/// Create a copy of MainPageContentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MainPageContentDtoCopyWith<MainPageContentDto> get copyWith => _$MainPageContentDtoCopyWithImpl<MainPageContentDto>(this as MainPageContentDto, _$identity);

  /// Serializes this MainPageContentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MainPageContentDto&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.title, title) || other.title == title)&&(identical(other.caption, caption) || other.caption == caption)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.region, region) || other.region == region)&&(identical(other.address, address) || other.address == address)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&const DeepCollectionEquality().equals(other.facilities, facilities)&&const DeepCollectionEquality().equals(other.languages, languages)&&(identical(other.ratingAverage, ratingAverage) || other.ratingAverage == ratingAverage)&&(identical(other.averageCheck, averageCheck) || other.averageCheck == averageCheck)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceInDollar, priceInDollar) || other.priceInDollar == priceInDollar)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.viewType, viewType) || other.viewType == viewType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentId,title,caption,const DeepCollectionEquality().hash(photos),photo,region,address,distance,reviewCount,const DeepCollectionEquality().hash(facilities),const DeepCollectionEquality().hash(languages),ratingAverage,averageCheck,price,priceInDollar,isFavorite,viewType);

@override
String toString() {
  return 'MainPageContentDto(contentId: $contentId, title: $title, caption: $caption, photos: $photos, photo: $photo, region: $region, address: $address, distance: $distance, reviewCount: $reviewCount, facilities: $facilities, languages: $languages, ratingAverage: $ratingAverage, averageCheck: $averageCheck, price: $price, priceInDollar: $priceInDollar, isFavorite: $isFavorite, viewType: $viewType)';
}


}

/// @nodoc
abstract mixin class $MainPageContentDtoCopyWith<$Res>  {
  factory $MainPageContentDtoCopyWith(MainPageContentDto value, $Res Function(MainPageContentDto) _then) = _$MainPageContentDtoCopyWithImpl;
@useResult
$Res call({
 int contentId, String? title, String? caption,@ImageArrayConvertor() List<String> photos,@ImageConvertor() String? photo, String? region, String? address, double? distance, int? reviewCount, List<FacilityItemDto>? facilities, List<String>? languages, double? ratingAverage, int? averageCheck, double? price, double? priceInDollar, bool? isFavorite,@ViewTypeConvertor() ViewType viewType
});




}
/// @nodoc
class _$MainPageContentDtoCopyWithImpl<$Res>
    implements $MainPageContentDtoCopyWith<$Res> {
  _$MainPageContentDtoCopyWithImpl(this._self, this._then);

  final MainPageContentDto _self;
  final $Res Function(MainPageContentDto) _then;

/// Create a copy of MainPageContentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? contentId = null,Object? title = freezed,Object? caption = freezed,Object? photos = null,Object? photo = freezed,Object? region = freezed,Object? address = freezed,Object? distance = freezed,Object? reviewCount = freezed,Object? facilities = freezed,Object? languages = freezed,Object? ratingAverage = freezed,Object? averageCheck = freezed,Object? price = freezed,Object? priceInDollar = freezed,Object? isFavorite = freezed,Object? viewType = null,}) {
  return _then(_self.copyWith(
contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,facilities: freezed == facilities ? _self.facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<FacilityItemDto>?,languages: freezed == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>?,ratingAverage: freezed == ratingAverage ? _self.ratingAverage : ratingAverage // ignore: cast_nullable_to_non_nullable
as double?,averageCheck: freezed == averageCheck ? _self.averageCheck : averageCheck // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,priceInDollar: freezed == priceInDollar ? _self.priceInDollar : priceInDollar // ignore: cast_nullable_to_non_nullable
as double?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as ViewType,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _MainPageContentDto extends MainPageContentDto {
  const _MainPageContentDto({required this.contentId, this.title, this.caption, @ImageArrayConvertor() final  List<String> photos = const [], @ImageConvertor() this.photo, this.region, this.address, this.distance, this.reviewCount, final  List<FacilityItemDto>? facilities, final  List<String>? languages, this.ratingAverage, this.averageCheck, this.price, this.priceInDollar, this.isFavorite, @ViewTypeConvertor() this.viewType = ViewType.places}): _photos = photos,_facilities = facilities,_languages = languages,super._();
  factory _MainPageContentDto.fromJson(Map<String, dynamic> json) => _$MainPageContentDtoFromJson(json);

@override final  int contentId;
@override final  String? title;
@override final  String? caption;
 final  List<String> _photos;
@override@JsonKey()@ImageArrayConvertor() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override@ImageConvertor() final  String? photo;
@override final  String? region;
@override final  String? address;
@override final  double? distance;
@override final  int? reviewCount;
 final  List<FacilityItemDto>? _facilities;
@override List<FacilityItemDto>? get facilities {
  final value = _facilities;
  if (value == null) return null;
  if (_facilities is EqualUnmodifiableListView) return _facilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _languages;
@override List<String>? get languages {
  final value = _languages;
  if (value == null) return null;
  if (_languages is EqualUnmodifiableListView) return _languages;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double? ratingAverage;
@override final  int? averageCheck;
@override final  double? price;
@override final  double? priceInDollar;
@override final  bool? isFavorite;
@override@JsonKey()@ViewTypeConvertor() final  ViewType viewType;

/// Create a copy of MainPageContentDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MainPageContentDtoCopyWith<_MainPageContentDto> get copyWith => __$MainPageContentDtoCopyWithImpl<_MainPageContentDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MainPageContentDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _MainPageContentDto&&(identical(other.contentId, contentId) || other.contentId == contentId)&&(identical(other.title, title) || other.title == title)&&(identical(other.caption, caption) || other.caption == caption)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.photo, photo) || other.photo == photo)&&(identical(other.region, region) || other.region == region)&&(identical(other.address, address) || other.address == address)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&const DeepCollectionEquality().equals(other._facilities, _facilities)&&const DeepCollectionEquality().equals(other._languages, _languages)&&(identical(other.ratingAverage, ratingAverage) || other.ratingAverage == ratingAverage)&&(identical(other.averageCheck, averageCheck) || other.averageCheck == averageCheck)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceInDollar, priceInDollar) || other.priceInDollar == priceInDollar)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.viewType, viewType) || other.viewType == viewType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,contentId,title,caption,const DeepCollectionEquality().hash(_photos),photo,region,address,distance,reviewCount,const DeepCollectionEquality().hash(_facilities),const DeepCollectionEquality().hash(_languages),ratingAverage,averageCheck,price,priceInDollar,isFavorite,viewType);

@override
String toString() {
  return 'MainPageContentDto(contentId: $contentId, title: $title, caption: $caption, photos: $photos, photo: $photo, region: $region, address: $address, distance: $distance, reviewCount: $reviewCount, facilities: $facilities, languages: $languages, ratingAverage: $ratingAverage, averageCheck: $averageCheck, price: $price, priceInDollar: $priceInDollar, isFavorite: $isFavorite, viewType: $viewType)';
}


}

/// @nodoc
abstract mixin class _$MainPageContentDtoCopyWith<$Res> implements $MainPageContentDtoCopyWith<$Res> {
  factory _$MainPageContentDtoCopyWith(_MainPageContentDto value, $Res Function(_MainPageContentDto) _then) = __$MainPageContentDtoCopyWithImpl;
@override @useResult
$Res call({
 int contentId, String? title, String? caption,@ImageArrayConvertor() List<String> photos,@ImageConvertor() String? photo, String? region, String? address, double? distance, int? reviewCount, List<FacilityItemDto>? facilities, List<String>? languages, double? ratingAverage, int? averageCheck, double? price, double? priceInDollar, bool? isFavorite,@ViewTypeConvertor() ViewType viewType
});




}
/// @nodoc
class __$MainPageContentDtoCopyWithImpl<$Res>
    implements _$MainPageContentDtoCopyWith<$Res> {
  __$MainPageContentDtoCopyWithImpl(this._self, this._then);

  final _MainPageContentDto _self;
  final $Res Function(_MainPageContentDto) _then;

/// Create a copy of MainPageContentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? contentId = null,Object? title = freezed,Object? caption = freezed,Object? photos = null,Object? photo = freezed,Object? region = freezed,Object? address = freezed,Object? distance = freezed,Object? reviewCount = freezed,Object? facilities = freezed,Object? languages = freezed,Object? ratingAverage = freezed,Object? averageCheck = freezed,Object? price = freezed,Object? priceInDollar = freezed,Object? isFavorite = freezed,Object? viewType = null,}) {
  return _then(_MainPageContentDto(
contentId: null == contentId ? _self.contentId : contentId // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,facilities: freezed == facilities ? _self._facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<FacilityItemDto>?,languages: freezed == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>?,ratingAverage: freezed == ratingAverage ? _self.ratingAverage : ratingAverage // ignore: cast_nullable_to_non_nullable
as double?,averageCheck: freezed == averageCheck ? _self.averageCheck : averageCheck // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,priceInDollar: freezed == priceInDollar ? _self.priceInDollar : priceInDollar // ignore: cast_nullable_to_non_nullable
as double?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as ViewType,
  ));
}


}

// dart format on

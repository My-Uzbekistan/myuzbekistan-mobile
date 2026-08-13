// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 int get id; String? get title; String? get shortDescription; String? get description; int? get categoryId; String? get categoryName; bool? get isFavorite; String? get workingHours; List<WorkingScheduleDto>? get workingSchedule; List<double>? get location; List<FacilityItemDto>? get facilities; List<FacilityGroupDto>? get facilityGroups; List<String>? get languages; List<AttachmentsItemDto>? get attachments;@ImageArrayConvertor() List<String>? get photos;@ImageConvertor() String? get photo; List<ContactsDto>? get contacts; double? get ratingAverage; int? get averageCheck; double? get price; double? get priceInDollar; String? get priceUnit; DateTime? get eventDate; String? get eventType; String? get address; String? get region; double? get distance;@JsonKey(name: 'distanse') int? get distanse; int? get reviewCount; InfoDto? get info;@ViewTypeConvertor() ViewType get viewType;
/// Create a copy of ContentDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ContentDtoCopyWith<ContentDto> get copyWith => _$ContentDtoCopyWithImpl<ContentDto>(this as ContentDto, _$identity);

  /// Serializes this ContentDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ContentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&const DeepCollectionEquality().equals(other.workingSchedule, workingSchedule)&&const DeepCollectionEquality().equals(other.location, location)&&const DeepCollectionEquality().equals(other.facilities, facilities)&&const DeepCollectionEquality().equals(other.facilityGroups, facilityGroups)&&const DeepCollectionEquality().equals(other.languages, languages)&&const DeepCollectionEquality().equals(other.attachments, attachments)&&const DeepCollectionEquality().equals(other.photos, photos)&&(identical(other.photo, photo) || other.photo == photo)&&const DeepCollectionEquality().equals(other.contacts, contacts)&&(identical(other.ratingAverage, ratingAverage) || other.ratingAverage == ratingAverage)&&(identical(other.averageCheck, averageCheck) || other.averageCheck == averageCheck)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceInDollar, priceInDollar) || other.priceInDollar == priceInDollar)&&(identical(other.priceUnit, priceUnit) || other.priceUnit == priceUnit)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.address, address) || other.address == address)&&(identical(other.region, region) || other.region == region)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.distanse, distanse) || other.distanse == distanse)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.info, info) || other.info == info)&&(identical(other.viewType, viewType) || other.viewType == viewType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,shortDescription,description,categoryId,categoryName,isFavorite,workingHours,const DeepCollectionEquality().hash(workingSchedule),const DeepCollectionEquality().hash(location),const DeepCollectionEquality().hash(facilities),const DeepCollectionEquality().hash(facilityGroups),const DeepCollectionEquality().hash(languages),const DeepCollectionEquality().hash(attachments),const DeepCollectionEquality().hash(photos),photo,const DeepCollectionEquality().hash(contacts),ratingAverage,averageCheck,price,priceInDollar,priceUnit,eventDate,eventType,address,region,distance,distanse,reviewCount,info,viewType]);

@override
String toString() {
  return 'ContentDto(id: $id, title: $title, shortDescription: $shortDescription, description: $description, categoryId: $categoryId, categoryName: $categoryName, isFavorite: $isFavorite, workingHours: $workingHours, workingSchedule: $workingSchedule, location: $location, facilities: $facilities, facilityGroups: $facilityGroups, languages: $languages, attachments: $attachments, photos: $photos, photo: $photo, contacts: $contacts, ratingAverage: $ratingAverage, averageCheck: $averageCheck, price: $price, priceInDollar: $priceInDollar, priceUnit: $priceUnit, eventDate: $eventDate, eventType: $eventType, address: $address, region: $region, distance: $distance, distanse: $distanse, reviewCount: $reviewCount, info: $info, viewType: $viewType)';
}


}

/// @nodoc
abstract mixin class $ContentDtoCopyWith<$Res>  {
  factory $ContentDtoCopyWith(ContentDto value, $Res Function(ContentDto) _then) = _$ContentDtoCopyWithImpl;
@useResult
$Res call({
 int id, String? title, String? shortDescription, String? description, int? categoryId, String? categoryName, bool? isFavorite, String? workingHours, List<WorkingScheduleDto>? workingSchedule, List<double>? location, List<FacilityItemDto>? facilities, List<FacilityGroupDto>? facilityGroups, List<String>? languages, List<AttachmentsItemDto>? attachments,@ImageArrayConvertor() List<String>? photos,@ImageConvertor() String? photo, List<ContactsDto>? contacts, double? ratingAverage, int? averageCheck, double? price, double? priceInDollar, String? priceUnit, DateTime? eventDate, String? eventType, String? address, String? region, double? distance,@JsonKey(name: 'distanse') int? distanse, int? reviewCount, InfoDto? info,@ViewTypeConvertor() ViewType viewType
});


$InfoDtoCopyWith<$Res>? get info;

}
/// @nodoc
class _$ContentDtoCopyWithImpl<$Res>
    implements $ContentDtoCopyWith<$Res> {
  _$ContentDtoCopyWithImpl(this._self, this._then);

  final ContentDto _self;
  final $Res Function(ContentDto) _then;

/// Create a copy of ContentDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? title = freezed,Object? shortDescription = freezed,Object? description = freezed,Object? categoryId = freezed,Object? categoryName = freezed,Object? isFavorite = freezed,Object? workingHours = freezed,Object? workingSchedule = freezed,Object? location = freezed,Object? facilities = freezed,Object? facilityGroups = freezed,Object? languages = freezed,Object? attachments = freezed,Object? photos = freezed,Object? photo = freezed,Object? contacts = freezed,Object? ratingAverage = freezed,Object? averageCheck = freezed,Object? price = freezed,Object? priceInDollar = freezed,Object? priceUnit = freezed,Object? eventDate = freezed,Object? eventType = freezed,Object? address = freezed,Object? region = freezed,Object? distance = freezed,Object? distanse = freezed,Object? reviewCount = freezed,Object? info = freezed,Object? viewType = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,workingHours: freezed == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as String?,workingSchedule: freezed == workingSchedule ? _self.workingSchedule : workingSchedule // ignore: cast_nullable_to_non_nullable
as List<WorkingScheduleDto>?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as List<double>?,facilities: freezed == facilities ? _self.facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<FacilityItemDto>?,facilityGroups: freezed == facilityGroups ? _self.facilityGroups : facilityGroups // ignore: cast_nullable_to_non_nullable
as List<FacilityGroupDto>?,languages: freezed == languages ? _self.languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>?,attachments: freezed == attachments ? _self.attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentsItemDto>?,photos: freezed == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,contacts: freezed == contacts ? _self.contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<ContactsDto>?,ratingAverage: freezed == ratingAverage ? _self.ratingAverage : ratingAverage // ignore: cast_nullable_to_non_nullable
as double?,averageCheck: freezed == averageCheck ? _self.averageCheck : averageCheck // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,priceInDollar: freezed == priceInDollar ? _self.priceInDollar : priceInDollar // ignore: cast_nullable_to_non_nullable
as double?,priceUnit: freezed == priceUnit ? _self.priceUnit : priceUnit // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,eventType: freezed == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,distanse: freezed == distanse ? _self.distanse : distanse // ignore: cast_nullable_to_non_nullable
as int?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as InfoDto?,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as ViewType,
  ));
}
/// Create a copy of ContentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoDtoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $InfoDtoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// Adds pattern-matching-related methods to [ContentDto].
extension ContentDtoPatterns on ContentDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContentDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContentDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContentDto value)  $default,){
final _that = this;
switch (_that) {
case _ContentDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContentDto value)?  $default,){
final _that = this;
switch (_that) {
case _ContentDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String? title,  String? shortDescription,  String? description,  int? categoryId,  String? categoryName,  bool? isFavorite,  String? workingHours,  List<WorkingScheduleDto>? workingSchedule,  List<double>? location,  List<FacilityItemDto>? facilities,  List<FacilityGroupDto>? facilityGroups,  List<String>? languages,  List<AttachmentsItemDto>? attachments, @ImageArrayConvertor()  List<String>? photos, @ImageConvertor()  String? photo,  List<ContactsDto>? contacts,  double? ratingAverage,  int? averageCheck,  double? price,  double? priceInDollar,  String? priceUnit,  DateTime? eventDate,  String? eventType,  String? address,  String? region,  double? distance, @JsonKey(name: 'distanse')  int? distanse,  int? reviewCount,  InfoDto? info, @ViewTypeConvertor()  ViewType viewType)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContentDto() when $default != null:
return $default(_that.id,_that.title,_that.shortDescription,_that.description,_that.categoryId,_that.categoryName,_that.isFavorite,_that.workingHours,_that.workingSchedule,_that.location,_that.facilities,_that.facilityGroups,_that.languages,_that.attachments,_that.photos,_that.photo,_that.contacts,_that.ratingAverage,_that.averageCheck,_that.price,_that.priceInDollar,_that.priceUnit,_that.eventDate,_that.eventType,_that.address,_that.region,_that.distance,_that.distanse,_that.reviewCount,_that.info,_that.viewType);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String? title,  String? shortDescription,  String? description,  int? categoryId,  String? categoryName,  bool? isFavorite,  String? workingHours,  List<WorkingScheduleDto>? workingSchedule,  List<double>? location,  List<FacilityItemDto>? facilities,  List<FacilityGroupDto>? facilityGroups,  List<String>? languages,  List<AttachmentsItemDto>? attachments, @ImageArrayConvertor()  List<String>? photos, @ImageConvertor()  String? photo,  List<ContactsDto>? contacts,  double? ratingAverage,  int? averageCheck,  double? price,  double? priceInDollar,  String? priceUnit,  DateTime? eventDate,  String? eventType,  String? address,  String? region,  double? distance, @JsonKey(name: 'distanse')  int? distanse,  int? reviewCount,  InfoDto? info, @ViewTypeConvertor()  ViewType viewType)  $default,) {final _that = this;
switch (_that) {
case _ContentDto():
return $default(_that.id,_that.title,_that.shortDescription,_that.description,_that.categoryId,_that.categoryName,_that.isFavorite,_that.workingHours,_that.workingSchedule,_that.location,_that.facilities,_that.facilityGroups,_that.languages,_that.attachments,_that.photos,_that.photo,_that.contacts,_that.ratingAverage,_that.averageCheck,_that.price,_that.priceInDollar,_that.priceUnit,_that.eventDate,_that.eventType,_that.address,_that.region,_that.distance,_that.distanse,_that.reviewCount,_that.info,_that.viewType);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String? title,  String? shortDescription,  String? description,  int? categoryId,  String? categoryName,  bool? isFavorite,  String? workingHours,  List<WorkingScheduleDto>? workingSchedule,  List<double>? location,  List<FacilityItemDto>? facilities,  List<FacilityGroupDto>? facilityGroups,  List<String>? languages,  List<AttachmentsItemDto>? attachments, @ImageArrayConvertor()  List<String>? photos, @ImageConvertor()  String? photo,  List<ContactsDto>? contacts,  double? ratingAverage,  int? averageCheck,  double? price,  double? priceInDollar,  String? priceUnit,  DateTime? eventDate,  String? eventType,  String? address,  String? region,  double? distance, @JsonKey(name: 'distanse')  int? distanse,  int? reviewCount,  InfoDto? info, @ViewTypeConvertor()  ViewType viewType)?  $default,) {final _that = this;
switch (_that) {
case _ContentDto() when $default != null:
return $default(_that.id,_that.title,_that.shortDescription,_that.description,_that.categoryId,_that.categoryName,_that.isFavorite,_that.workingHours,_that.workingSchedule,_that.location,_that.facilities,_that.facilityGroups,_that.languages,_that.attachments,_that.photos,_that.photo,_that.contacts,_that.ratingAverage,_that.averageCheck,_that.price,_that.priceInDollar,_that.priceUnit,_that.eventDate,_that.eventType,_that.address,_that.region,_that.distance,_that.distanse,_that.reviewCount,_that.info,_that.viewType);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ContentDto extends ContentDto {
  const _ContentDto({required this.id, this.title, this.shortDescription, this.description, this.categoryId, this.categoryName, this.isFavorite, this.workingHours, final  List<WorkingScheduleDto>? workingSchedule, final  List<double>? location, final  List<FacilityItemDto>? facilities, final  List<FacilityGroupDto>? facilityGroups, final  List<String>? languages, final  List<AttachmentsItemDto>? attachments, @ImageArrayConvertor() final  List<String>? photos, @ImageConvertor() this.photo, final  List<ContactsDto>? contacts, this.ratingAverage, this.averageCheck, this.price, this.priceInDollar, this.priceUnit, this.eventDate, this.eventType, this.address, this.region, this.distance, @JsonKey(name: 'distanse') this.distanse, this.reviewCount, this.info, @ViewTypeConvertor() this.viewType = ViewType.places}): _workingSchedule = workingSchedule,_location = location,_facilities = facilities,_facilityGroups = facilityGroups,_languages = languages,_attachments = attachments,_photos = photos,_contacts = contacts,super._();
  factory _ContentDto.fromJson(Map<String, dynamic> json) => _$ContentDtoFromJson(json);

@override final  int id;
@override final  String? title;
@override final  String? shortDescription;
@override final  String? description;
@override final  int? categoryId;
@override final  String? categoryName;
@override final  bool? isFavorite;
@override final  String? workingHours;
 final  List<WorkingScheduleDto>? _workingSchedule;
@override List<WorkingScheduleDto>? get workingSchedule {
  final value = _workingSchedule;
  if (value == null) return null;
  if (_workingSchedule is EqualUnmodifiableListView) return _workingSchedule;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<double>? _location;
@override List<double>? get location {
  final value = _location;
  if (value == null) return null;
  if (_location is EqualUnmodifiableListView) return _location;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FacilityItemDto>? _facilities;
@override List<FacilityItemDto>? get facilities {
  final value = _facilities;
  if (value == null) return null;
  if (_facilities is EqualUnmodifiableListView) return _facilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<FacilityGroupDto>? _facilityGroups;
@override List<FacilityGroupDto>? get facilityGroups {
  final value = _facilityGroups;
  if (value == null) return null;
  if (_facilityGroups is EqualUnmodifiableListView) return _facilityGroups;
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

 final  List<AttachmentsItemDto>? _attachments;
@override List<AttachmentsItemDto>? get attachments {
  final value = _attachments;
  if (value == null) return null;
  if (_attachments is EqualUnmodifiableListView) return _attachments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

 final  List<String>? _photos;
@override@ImageArrayConvertor() List<String>? get photos {
  final value = _photos;
  if (value == null) return null;
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@ImageConvertor() final  String? photo;
 final  List<ContactsDto>? _contacts;
@override List<ContactsDto>? get contacts {
  final value = _contacts;
  if (value == null) return null;
  if (_contacts is EqualUnmodifiableListView) return _contacts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override final  double? ratingAverage;
@override final  int? averageCheck;
@override final  double? price;
@override final  double? priceInDollar;
@override final  String? priceUnit;
@override final  DateTime? eventDate;
@override final  String? eventType;
@override final  String? address;
@override final  String? region;
@override final  double? distance;
@override@JsonKey(name: 'distanse') final  int? distanse;
@override final  int? reviewCount;
@override final  InfoDto? info;
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
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ContentDto&&(identical(other.id, id) || other.id == id)&&(identical(other.title, title) || other.title == title)&&(identical(other.shortDescription, shortDescription) || other.shortDescription == shortDescription)&&(identical(other.description, description) || other.description == description)&&(identical(other.categoryId, categoryId) || other.categoryId == categoryId)&&(identical(other.categoryName, categoryName) || other.categoryName == categoryName)&&(identical(other.isFavorite, isFavorite) || other.isFavorite == isFavorite)&&(identical(other.workingHours, workingHours) || other.workingHours == workingHours)&&const DeepCollectionEquality().equals(other._workingSchedule, _workingSchedule)&&const DeepCollectionEquality().equals(other._location, _location)&&const DeepCollectionEquality().equals(other._facilities, _facilities)&&const DeepCollectionEquality().equals(other._facilityGroups, _facilityGroups)&&const DeepCollectionEquality().equals(other._languages, _languages)&&const DeepCollectionEquality().equals(other._attachments, _attachments)&&const DeepCollectionEquality().equals(other._photos, _photos)&&(identical(other.photo, photo) || other.photo == photo)&&const DeepCollectionEquality().equals(other._contacts, _contacts)&&(identical(other.ratingAverage, ratingAverage) || other.ratingAverage == ratingAverage)&&(identical(other.averageCheck, averageCheck) || other.averageCheck == averageCheck)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceInDollar, priceInDollar) || other.priceInDollar == priceInDollar)&&(identical(other.priceUnit, priceUnit) || other.priceUnit == priceUnit)&&(identical(other.eventDate, eventDate) || other.eventDate == eventDate)&&(identical(other.eventType, eventType) || other.eventType == eventType)&&(identical(other.address, address) || other.address == address)&&(identical(other.region, region) || other.region == region)&&(identical(other.distance, distance) || other.distance == distance)&&(identical(other.distanse, distanse) || other.distanse == distanse)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.info, info) || other.info == info)&&(identical(other.viewType, viewType) || other.viewType == viewType));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hashAll([runtimeType,id,title,shortDescription,description,categoryId,categoryName,isFavorite,workingHours,const DeepCollectionEquality().hash(_workingSchedule),const DeepCollectionEquality().hash(_location),const DeepCollectionEquality().hash(_facilities),const DeepCollectionEquality().hash(_facilityGroups),const DeepCollectionEquality().hash(_languages),const DeepCollectionEquality().hash(_attachments),const DeepCollectionEquality().hash(_photos),photo,const DeepCollectionEquality().hash(_contacts),ratingAverage,averageCheck,price,priceInDollar,priceUnit,eventDate,eventType,address,region,distance,distanse,reviewCount,info,viewType]);

@override
String toString() {
  return 'ContentDto(id: $id, title: $title, shortDescription: $shortDescription, description: $description, categoryId: $categoryId, categoryName: $categoryName, isFavorite: $isFavorite, workingHours: $workingHours, workingSchedule: $workingSchedule, location: $location, facilities: $facilities, facilityGroups: $facilityGroups, languages: $languages, attachments: $attachments, photos: $photos, photo: $photo, contacts: $contacts, ratingAverage: $ratingAverage, averageCheck: $averageCheck, price: $price, priceInDollar: $priceInDollar, priceUnit: $priceUnit, eventDate: $eventDate, eventType: $eventType, address: $address, region: $region, distance: $distance, distanse: $distanse, reviewCount: $reviewCount, info: $info, viewType: $viewType)';
}


}

/// @nodoc
abstract mixin class _$ContentDtoCopyWith<$Res> implements $ContentDtoCopyWith<$Res> {
  factory _$ContentDtoCopyWith(_ContentDto value, $Res Function(_ContentDto) _then) = __$ContentDtoCopyWithImpl;
@override @useResult
$Res call({
 int id, String? title, String? shortDescription, String? description, int? categoryId, String? categoryName, bool? isFavorite, String? workingHours, List<WorkingScheduleDto>? workingSchedule, List<double>? location, List<FacilityItemDto>? facilities, List<FacilityGroupDto>? facilityGroups, List<String>? languages, List<AttachmentsItemDto>? attachments,@ImageArrayConvertor() List<String>? photos,@ImageConvertor() String? photo, List<ContactsDto>? contacts, double? ratingAverage, int? averageCheck, double? price, double? priceInDollar, String? priceUnit, DateTime? eventDate, String? eventType, String? address, String? region, double? distance,@JsonKey(name: 'distanse') int? distanse, int? reviewCount, InfoDto? info,@ViewTypeConvertor() ViewType viewType
});


@override $InfoDtoCopyWith<$Res>? get info;

}
/// @nodoc
class __$ContentDtoCopyWithImpl<$Res>
    implements _$ContentDtoCopyWith<$Res> {
  __$ContentDtoCopyWithImpl(this._self, this._then);

  final _ContentDto _self;
  final $Res Function(_ContentDto) _then;

/// Create a copy of ContentDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? title = freezed,Object? shortDescription = freezed,Object? description = freezed,Object? categoryId = freezed,Object? categoryName = freezed,Object? isFavorite = freezed,Object? workingHours = freezed,Object? workingSchedule = freezed,Object? location = freezed,Object? facilities = freezed,Object? facilityGroups = freezed,Object? languages = freezed,Object? attachments = freezed,Object? photos = freezed,Object? photo = freezed,Object? contacts = freezed,Object? ratingAverage = freezed,Object? averageCheck = freezed,Object? price = freezed,Object? priceInDollar = freezed,Object? priceUnit = freezed,Object? eventDate = freezed,Object? eventType = freezed,Object? address = freezed,Object? region = freezed,Object? distance = freezed,Object? distanse = freezed,Object? reviewCount = freezed,Object? info = freezed,Object? viewType = null,}) {
  return _then(_ContentDto(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,title: freezed == title ? _self.title : title // ignore: cast_nullable_to_non_nullable
as String?,shortDescription: freezed == shortDescription ? _self.shortDescription : shortDescription // ignore: cast_nullable_to_non_nullable
as String?,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,categoryId: freezed == categoryId ? _self.categoryId : categoryId // ignore: cast_nullable_to_non_nullable
as int?,categoryName: freezed == categoryName ? _self.categoryName : categoryName // ignore: cast_nullable_to_non_nullable
as String?,isFavorite: freezed == isFavorite ? _self.isFavorite : isFavorite // ignore: cast_nullable_to_non_nullable
as bool?,workingHours: freezed == workingHours ? _self.workingHours : workingHours // ignore: cast_nullable_to_non_nullable
as String?,workingSchedule: freezed == workingSchedule ? _self._workingSchedule : workingSchedule // ignore: cast_nullable_to_non_nullable
as List<WorkingScheduleDto>?,location: freezed == location ? _self._location : location // ignore: cast_nullable_to_non_nullable
as List<double>?,facilities: freezed == facilities ? _self._facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<FacilityItemDto>?,facilityGroups: freezed == facilityGroups ? _self._facilityGroups : facilityGroups // ignore: cast_nullable_to_non_nullable
as List<FacilityGroupDto>?,languages: freezed == languages ? _self._languages : languages // ignore: cast_nullable_to_non_nullable
as List<String>?,attachments: freezed == attachments ? _self._attachments : attachments // ignore: cast_nullable_to_non_nullable
as List<AttachmentsItemDto>?,photos: freezed == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>?,photo: freezed == photo ? _self.photo : photo // ignore: cast_nullable_to_non_nullable
as String?,contacts: freezed == contacts ? _self._contacts : contacts // ignore: cast_nullable_to_non_nullable
as List<ContactsDto>?,ratingAverage: freezed == ratingAverage ? _self.ratingAverage : ratingAverage // ignore: cast_nullable_to_non_nullable
as double?,averageCheck: freezed == averageCheck ? _self.averageCheck : averageCheck // ignore: cast_nullable_to_non_nullable
as int?,price: freezed == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as double?,priceInDollar: freezed == priceInDollar ? _self.priceInDollar : priceInDollar // ignore: cast_nullable_to_non_nullable
as double?,priceUnit: freezed == priceUnit ? _self.priceUnit : priceUnit // ignore: cast_nullable_to_non_nullable
as String?,eventDate: freezed == eventDate ? _self.eventDate : eventDate // ignore: cast_nullable_to_non_nullable
as DateTime?,eventType: freezed == eventType ? _self.eventType : eventType // ignore: cast_nullable_to_non_nullable
as String?,address: freezed == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String?,region: freezed == region ? _self.region : region // ignore: cast_nullable_to_non_nullable
as String?,distance: freezed == distance ? _self.distance : distance // ignore: cast_nullable_to_non_nullable
as double?,distanse: freezed == distanse ? _self.distanse : distanse // ignore: cast_nullable_to_non_nullable
as int?,reviewCount: freezed == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int?,info: freezed == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as InfoDto?,viewType: null == viewType ? _self.viewType : viewType // ignore: cast_nullable_to_non_nullable
as ViewType,
  ));
}

/// Create a copy of ContentDto
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$InfoDtoCopyWith<$Res>? get info {
    if (_self.info == null) {
    return null;
  }

  return $InfoDtoCopyWith<$Res>(_self.info!, (value) {
    return _then(_self.copyWith(info: value));
  });
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


/// Adds pattern-matching-related methods to [FacilityItemDto].
extension FacilityItemDtoPatterns on FacilityItemDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FacilityItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FacilityItemDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FacilityItemDto value)  $default,){
final _that = this;
switch (_that) {
case _FacilityItemDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FacilityItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _FacilityItemDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name, @ImageConvertor()  String? icon)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FacilityItemDto() when $default != null:
return $default(_that.id,_that.name,_that.icon);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name, @ImageConvertor()  String? icon)  $default,) {final _that = this;
switch (_that) {
case _FacilityItemDto():
return $default(_that.id,_that.name,_that.icon);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name, @ImageConvertor()  String? icon)?  $default,) {final _that = this;
switch (_that) {
case _FacilityItemDto() when $default != null:
return $default(_that.id,_that.name,_that.icon);case _:
  return null;

}
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
mixin _$FacilityGroupDto {

 String? get name; List<FacilityItemDto> get facilities;
/// Create a copy of FacilityGroupDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FacilityGroupDtoCopyWith<FacilityGroupDto> get copyWith => _$FacilityGroupDtoCopyWithImpl<FacilityGroupDto>(this as FacilityGroupDto, _$identity);

  /// Serializes this FacilityGroupDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FacilityGroupDto&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other.facilities, facilities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(facilities));

@override
String toString() {
  return 'FacilityGroupDto(name: $name, facilities: $facilities)';
}


}

/// @nodoc
abstract mixin class $FacilityGroupDtoCopyWith<$Res>  {
  factory $FacilityGroupDtoCopyWith(FacilityGroupDto value, $Res Function(FacilityGroupDto) _then) = _$FacilityGroupDtoCopyWithImpl;
@useResult
$Res call({
 String? name, List<FacilityItemDto> facilities
});




}
/// @nodoc
class _$FacilityGroupDtoCopyWithImpl<$Res>
    implements $FacilityGroupDtoCopyWith<$Res> {
  _$FacilityGroupDtoCopyWithImpl(this._self, this._then);

  final FacilityGroupDto _self;
  final $Res Function(FacilityGroupDto) _then;

/// Create a copy of FacilityGroupDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = freezed,Object? facilities = null,}) {
  return _then(_self.copyWith(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,facilities: null == facilities ? _self.facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<FacilityItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [FacilityGroupDto].
extension FacilityGroupDtoPatterns on FacilityGroupDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _FacilityGroupDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FacilityGroupDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _FacilityGroupDto value)  $default,){
final _that = this;
switch (_that) {
case _FacilityGroupDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _FacilityGroupDto value)?  $default,){
final _that = this;
switch (_that) {
case _FacilityGroupDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? name,  List<FacilityItemDto> facilities)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FacilityGroupDto() when $default != null:
return $default(_that.name,_that.facilities);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? name,  List<FacilityItemDto> facilities)  $default,) {final _that = this;
switch (_that) {
case _FacilityGroupDto():
return $default(_that.name,_that.facilities);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? name,  List<FacilityItemDto> facilities)?  $default,) {final _that = this;
switch (_that) {
case _FacilityGroupDto() when $default != null:
return $default(_that.name,_that.facilities);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _FacilityGroupDto extends FacilityGroupDto {
  const _FacilityGroupDto({this.name, final  List<FacilityItemDto> facilities = const []}): _facilities = facilities,super._();
  factory _FacilityGroupDto.fromJson(Map<String, dynamic> json) => _$FacilityGroupDtoFromJson(json);

@override final  String? name;
 final  List<FacilityItemDto> _facilities;
@override@JsonKey() List<FacilityItemDto> get facilities {
  if (_facilities is EqualUnmodifiableListView) return _facilities;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_facilities);
}


/// Create a copy of FacilityGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FacilityGroupDtoCopyWith<_FacilityGroupDto> get copyWith => __$FacilityGroupDtoCopyWithImpl<_FacilityGroupDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$FacilityGroupDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FacilityGroupDto&&(identical(other.name, name) || other.name == name)&&const DeepCollectionEquality().equals(other._facilities, _facilities));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,name,const DeepCollectionEquality().hash(_facilities));

@override
String toString() {
  return 'FacilityGroupDto(name: $name, facilities: $facilities)';
}


}

/// @nodoc
abstract mixin class _$FacilityGroupDtoCopyWith<$Res> implements $FacilityGroupDtoCopyWith<$Res> {
  factory _$FacilityGroupDtoCopyWith(_FacilityGroupDto value, $Res Function(_FacilityGroupDto) _then) = __$FacilityGroupDtoCopyWithImpl;
@override @useResult
$Res call({
 String? name, List<FacilityItemDto> facilities
});




}
/// @nodoc
class __$FacilityGroupDtoCopyWithImpl<$Res>
    implements _$FacilityGroupDtoCopyWith<$Res> {
  __$FacilityGroupDtoCopyWithImpl(this._self, this._then);

  final _FacilityGroupDto _self;
  final $Res Function(_FacilityGroupDto) _then;

/// Create a copy of FacilityGroupDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = freezed,Object? facilities = null,}) {
  return _then(_FacilityGroupDto(
name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,facilities: null == facilities ? _self._facilities : facilities // ignore: cast_nullable_to_non_nullable
as List<FacilityItemDto>,
  ));
}


}


/// @nodoc
mixin _$WorkingScheduleDto {

 int get day; String? get name; bool get isClosed; String? get from; String? get to;
/// Create a copy of WorkingScheduleDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WorkingScheduleDtoCopyWith<WorkingScheduleDto> get copyWith => _$WorkingScheduleDtoCopyWithImpl<WorkingScheduleDto>(this as WorkingScheduleDto, _$identity);

  /// Serializes this WorkingScheduleDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WorkingScheduleDto&&(identical(other.day, day) || other.day == day)&&(identical(other.name, name) || other.name == name)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,name,isClosed,from,to);

@override
String toString() {
  return 'WorkingScheduleDto(day: $day, name: $name, isClosed: $isClosed, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class $WorkingScheduleDtoCopyWith<$Res>  {
  factory $WorkingScheduleDtoCopyWith(WorkingScheduleDto value, $Res Function(WorkingScheduleDto) _then) = _$WorkingScheduleDtoCopyWithImpl;
@useResult
$Res call({
 int day, String? name, bool isClosed, String? from, String? to
});




}
/// @nodoc
class _$WorkingScheduleDtoCopyWithImpl<$Res>
    implements $WorkingScheduleDtoCopyWith<$Res> {
  _$WorkingScheduleDtoCopyWithImpl(this._self, this._then);

  final WorkingScheduleDto _self;
  final $Res Function(WorkingScheduleDto) _then;

/// Create a copy of WorkingScheduleDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? name = freezed,Object? isClosed = null,Object? from = freezed,Object? to = freezed,}) {
  return _then(_self.copyWith(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [WorkingScheduleDto].
extension WorkingScheduleDtoPatterns on WorkingScheduleDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _WorkingScheduleDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _WorkingScheduleDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _WorkingScheduleDto value)  $default,){
final _that = this;
switch (_that) {
case _WorkingScheduleDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _WorkingScheduleDto value)?  $default,){
final _that = this;
switch (_that) {
case _WorkingScheduleDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int day,  String? name,  bool isClosed,  String? from,  String? to)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _WorkingScheduleDto() when $default != null:
return $default(_that.day,_that.name,_that.isClosed,_that.from,_that.to);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int day,  String? name,  bool isClosed,  String? from,  String? to)  $default,) {final _that = this;
switch (_that) {
case _WorkingScheduleDto():
return $default(_that.day,_that.name,_that.isClosed,_that.from,_that.to);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int day,  String? name,  bool isClosed,  String? from,  String? to)?  $default,) {final _that = this;
switch (_that) {
case _WorkingScheduleDto() when $default != null:
return $default(_that.day,_that.name,_that.isClosed,_that.from,_that.to);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _WorkingScheduleDto extends WorkingScheduleDto {
  const _WorkingScheduleDto({this.day = 0, this.name, this.isClosed = false, this.from, this.to}): super._();
  factory _WorkingScheduleDto.fromJson(Map<String, dynamic> json) => _$WorkingScheduleDtoFromJson(json);

@override@JsonKey() final  int day;
@override final  String? name;
@override@JsonKey() final  bool isClosed;
@override final  String? from;
@override final  String? to;

/// Create a copy of WorkingScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WorkingScheduleDtoCopyWith<_WorkingScheduleDto> get copyWith => __$WorkingScheduleDtoCopyWithImpl<_WorkingScheduleDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WorkingScheduleDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WorkingScheduleDto&&(identical(other.day, day) || other.day == day)&&(identical(other.name, name) || other.name == name)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed)&&(identical(other.from, from) || other.from == from)&&(identical(other.to, to) || other.to == to));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,day,name,isClosed,from,to);

@override
String toString() {
  return 'WorkingScheduleDto(day: $day, name: $name, isClosed: $isClosed, from: $from, to: $to)';
}


}

/// @nodoc
abstract mixin class _$WorkingScheduleDtoCopyWith<$Res> implements $WorkingScheduleDtoCopyWith<$Res> {
  factory _$WorkingScheduleDtoCopyWith(_WorkingScheduleDto value, $Res Function(_WorkingScheduleDto) _then) = __$WorkingScheduleDtoCopyWithImpl;
@override @useResult
$Res call({
 int day, String? name, bool isClosed, String? from, String? to
});




}
/// @nodoc
class __$WorkingScheduleDtoCopyWithImpl<$Res>
    implements _$WorkingScheduleDtoCopyWith<$Res> {
  __$WorkingScheduleDtoCopyWithImpl(this._self, this._then);

  final _WorkingScheduleDto _self;
  final $Res Function(_WorkingScheduleDto) _then;

/// Create a copy of WorkingScheduleDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? name = freezed,Object? isClosed = null,Object? from = freezed,Object? to = freezed,}) {
  return _then(_WorkingScheduleDto(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as int,name: freezed == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String?,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,from: freezed == from ? _self.from : from // ignore: cast_nullable_to_non_nullable
as String?,to: freezed == to ? _self.to : to // ignore: cast_nullable_to_non_nullable
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


/// Adds pattern-matching-related methods to [AttachmentsItemDto].
extension AttachmentsItemDtoPatterns on AttachmentsItemDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AttachmentsItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AttachmentsItemDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AttachmentsItemDto value)  $default,){
final _that = this;
switch (_that) {
case _AttachmentsItemDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AttachmentsItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _AttachmentsItemDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@ImageConvertor()  String? icon,  String? name, @ImageConvertor()  String? files)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AttachmentsItemDto() when $default != null:
return $default(_that.icon,_that.name,_that.files);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@ImageConvertor()  String? icon,  String? name, @ImageConvertor()  String? files)  $default,) {final _that = this;
switch (_that) {
case _AttachmentsItemDto():
return $default(_that.icon,_that.name,_that.files);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@ImageConvertor()  String? icon,  String? name, @ImageConvertor()  String? files)?  $default,) {final _that = this;
switch (_that) {
case _AttachmentsItemDto() when $default != null:
return $default(_that.icon,_that.name,_that.files);case _:
  return null;

}
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


/// Adds pattern-matching-related methods to [LanguageItemDto].
extension LanguageItemDtoPatterns on LanguageItemDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LanguageItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LanguageItemDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LanguageItemDto value)  $default,){
final _that = this;
switch (_that) {
case _LanguageItemDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LanguageItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _LanguageItemDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FieldDto<String?> id,  FieldDto<String?> name)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LanguageItemDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FieldDto<String?> id,  FieldDto<String?> name)  $default,) {final _that = this;
switch (_that) {
case _LanguageItemDto():
return $default(_that.id,_that.name);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FieldDto<String?> id,  FieldDto<String?> name)?  $default,) {final _that = this;
switch (_that) {
case _LanguageItemDto() when $default != null:
return $default(_that.id,_that.name);case _:
  return null;

}
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


/// Adds pattern-matching-related methods to [ContactsDto].
extension ContactsDtoPatterns on ContactsDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ContactsDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ContactsDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ContactsDto value)  $default,){
final _that = this;
switch (_that) {
case _ContactsDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ContactsDto value)?  $default,){
final _that = this;
switch (_that) {
case _ContactsDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@ImageConvertor()  String? icon,  String? name,  String? contact,  String? action)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ContactsDto() when $default != null:
return $default(_that.icon,_that.name,_that.contact,_that.action);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@ImageConvertor()  String? icon,  String? name,  String? contact,  String? action)  $default,) {final _that = this;
switch (_that) {
case _ContactsDto():
return $default(_that.icon,_that.name,_that.contact,_that.action);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@ImageConvertor()  String? icon,  String? name,  String? contact,  String? action)?  $default,) {final _that = this;
switch (_that) {
case _ContactsDto() when $default != null:
return $default(_that.icon,_that.name,_that.contact,_that.action);case _:
  return null;

}
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


/// @nodoc
mixin _$InfoDto {

 List<InfoItemDto> get items;
/// Create a copy of InfoDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoDtoCopyWith<InfoDto> get copyWith => _$InfoDtoCopyWithImpl<InfoDto>(this as InfoDto, _$identity);

  /// Serializes this InfoDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoDto&&const DeepCollectionEquality().equals(other.items, items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(items));

@override
String toString() {
  return 'InfoDto(items: $items)';
}


}

/// @nodoc
abstract mixin class $InfoDtoCopyWith<$Res>  {
  factory $InfoDtoCopyWith(InfoDto value, $Res Function(InfoDto) _then) = _$InfoDtoCopyWithImpl;
@useResult
$Res call({
 List<InfoItemDto> items
});




}
/// @nodoc
class _$InfoDtoCopyWithImpl<$Res>
    implements $InfoDtoCopyWith<$Res> {
  _$InfoDtoCopyWithImpl(this._self, this._then);

  final InfoDto _self;
  final $Res Function(InfoDto) _then;

/// Create a copy of InfoDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,}) {
  return _then(_self.copyWith(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<InfoItemDto>,
  ));
}

}


/// Adds pattern-matching-related methods to [InfoDto].
extension InfoDtoPatterns on InfoDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoDto value)  $default,){
final _that = this;
switch (_that) {
case _InfoDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoDto value)?  $default,){
final _that = this;
switch (_that) {
case _InfoDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<InfoItemDto> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoDto() when $default != null:
return $default(_that.items);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<InfoItemDto> items)  $default,) {final _that = this;
switch (_that) {
case _InfoDto():
return $default(_that.items);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<InfoItemDto> items)?  $default,) {final _that = this;
switch (_that) {
case _InfoDto() when $default != null:
return $default(_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoDto implements InfoDto {
  const _InfoDto({final  List<InfoItemDto> items = const []}): _items = items;
  factory _InfoDto.fromJson(Map<String, dynamic> json) => _$InfoDtoFromJson(json);

 final  List<InfoItemDto> _items;
@override@JsonKey() List<InfoItemDto> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of InfoDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoDtoCopyWith<_InfoDto> get copyWith => __$InfoDtoCopyWithImpl<_InfoDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoDto&&const DeepCollectionEquality().equals(other._items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_items));

@override
String toString() {
  return 'InfoDto(items: $items)';
}


}

/// @nodoc
abstract mixin class _$InfoDtoCopyWith<$Res> implements $InfoDtoCopyWith<$Res> {
  factory _$InfoDtoCopyWith(_InfoDto value, $Res Function(_InfoDto) _then) = __$InfoDtoCopyWithImpl;
@override @useResult
$Res call({
 List<InfoItemDto> items
});




}
/// @nodoc
class __$InfoDtoCopyWithImpl<$Res>
    implements _$InfoDtoCopyWith<$Res> {
  __$InfoDtoCopyWithImpl(this._self, this._then);

  final _InfoDto _self;
  final $Res Function(_InfoDto) _then;

/// Create a copy of InfoDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,}) {
  return _then(_InfoDto(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<InfoItemDto>,
  ));
}


}


/// @nodoc
mixin _$InfoItemDto {

 String? get slug; String get key; String? get value; String? get type; String? get state;
/// Create a copy of InfoItemDto
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InfoItemDtoCopyWith<InfoItemDto> get copyWith => _$InfoItemDtoCopyWithImpl<InfoItemDto>(this as InfoItemDto, _$identity);

  /// Serializes this InfoItemDto to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InfoItemDto&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.type, type) || other.type == type)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,key,value,type,state);

@override
String toString() {
  return 'InfoItemDto(slug: $slug, key: $key, value: $value, type: $type, state: $state)';
}


}

/// @nodoc
abstract mixin class $InfoItemDtoCopyWith<$Res>  {
  factory $InfoItemDtoCopyWith(InfoItemDto value, $Res Function(InfoItemDto) _then) = _$InfoItemDtoCopyWithImpl;
@useResult
$Res call({
 String? slug, String key, String? value, String? type, String? state
});




}
/// @nodoc
class _$InfoItemDtoCopyWithImpl<$Res>
    implements $InfoItemDtoCopyWith<$Res> {
  _$InfoItemDtoCopyWithImpl(this._self, this._then);

  final InfoItemDto _self;
  final $Res Function(InfoItemDto) _then;

/// Create a copy of InfoItemDto
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? slug = freezed,Object? key = null,Object? value = freezed,Object? type = freezed,Object? state = freezed,}) {
  return _then(_self.copyWith(
slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [InfoItemDto].
extension InfoItemDtoPatterns on InfoItemDto {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _InfoItemDto value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _InfoItemDto() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _InfoItemDto value)  $default,){
final _that = this;
switch (_that) {
case _InfoItemDto():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _InfoItemDto value)?  $default,){
final _that = this;
switch (_that) {
case _InfoItemDto() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String? slug,  String key,  String? value,  String? type,  String? state)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _InfoItemDto() when $default != null:
return $default(_that.slug,_that.key,_that.value,_that.type,_that.state);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String? slug,  String key,  String? value,  String? type,  String? state)  $default,) {final _that = this;
switch (_that) {
case _InfoItemDto():
return $default(_that.slug,_that.key,_that.value,_that.type,_that.state);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String? slug,  String key,  String? value,  String? type,  String? state)?  $default,) {final _that = this;
switch (_that) {
case _InfoItemDto() when $default != null:
return $default(_that.slug,_that.key,_that.value,_that.type,_that.state);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _InfoItemDto implements InfoItemDto {
  const _InfoItemDto({this.slug, this.key = "", this.value, this.type, this.state});
  factory _InfoItemDto.fromJson(Map<String, dynamic> json) => _$InfoItemDtoFromJson(json);

@override final  String? slug;
@override@JsonKey() final  String key;
@override final  String? value;
@override final  String? type;
@override final  String? state;

/// Create a copy of InfoItemDto
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$InfoItemDtoCopyWith<_InfoItemDto> get copyWith => __$InfoItemDtoCopyWithImpl<_InfoItemDto>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$InfoItemDtoToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _InfoItemDto&&(identical(other.slug, slug) || other.slug == slug)&&(identical(other.key, key) || other.key == key)&&(identical(other.value, value) || other.value == value)&&(identical(other.type, type) || other.type == type)&&(identical(other.state, state) || other.state == state));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,slug,key,value,type,state);

@override
String toString() {
  return 'InfoItemDto(slug: $slug, key: $key, value: $value, type: $type, state: $state)';
}


}

/// @nodoc
abstract mixin class _$InfoItemDtoCopyWith<$Res> implements $InfoItemDtoCopyWith<$Res> {
  factory _$InfoItemDtoCopyWith(_InfoItemDto value, $Res Function(_InfoItemDto) _then) = __$InfoItemDtoCopyWithImpl;
@override @useResult
$Res call({
 String? slug, String key, String? value, String? type, String? state
});




}
/// @nodoc
class __$InfoItemDtoCopyWithImpl<$Res>
    implements _$InfoItemDtoCopyWith<$Res> {
  __$InfoItemDtoCopyWithImpl(this._self, this._then);

  final _InfoItemDto _self;
  final $Res Function(_InfoItemDto) _then;

/// Create a copy of InfoItemDto
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? slug = freezed,Object? key = null,Object? value = freezed,Object? type = freezed,Object? state = freezed,}) {
  return _then(_InfoItemDto(
slug: freezed == slug ? _self.slug : slug // ignore: cast_nullable_to_non_nullable
as String?,key: null == key ? _self.key : key // ignore: cast_nullable_to_non_nullable
as String,value: freezed == value ? _self.value : value // ignore: cast_nullable_to_non_nullable
as String?,type: freezed == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String?,state: freezed == state ? _self.state : state // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on

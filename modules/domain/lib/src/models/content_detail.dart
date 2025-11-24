import 'package:domain/src/models/view_type.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared/shared.dart';

// part 'content_detail.freezed.dart';

class ContentDetail extends Equatable {
  final int id;
  final String? title;
  final String? description;
  final String? region;
  final double? distance;
  final int? reviewCount;

  final int? categoryId;
  final String? categoryName;
  final String? workingHours;
  final List<double>? location;
  final List<Facility>? facilities;
  final List<String>? languages;
  final List<Attachments>? attachments;
  final List<String>? photos;
  final String? _photo;
  final List<Contacts>? contacts;
  final double? ratingAverage;
  final int? averageCheck;
  final double? price;
  final double? priceInDollar;
  final String? address;
  final bool isFavorite;
  final ViewType viewType;
  final DetailInfo? info;

  const ContentDetail({
    required this.id,
    this.title,
    this.description,
    this.categoryId,
    this.categoryName,
    this.workingHours,
    this.location,
    this.facilities,
    this.languages,
    this.attachments,
    this.photos,
    String? photo,
    this.contacts,
    this.ratingAverage,
    this.averageCheck,
    this.price,
    this.priceInDollar,
    this.address,
    required this.viewType,
    this.distance,
    this.region,
    this.reviewCount,
    this.isFavorite = false,
    this.info,
  }) : _photo = photo;

  String get image => _photo ?? photos?.firstOrNull ?? "";

  bool get facilitiesAvailable => facilities?.isNotEmpty == true;

  bool get workingHoursAvailable => workingHours?.isNotEmpty == true;

  bool get contactAvailable => contacts?.isNotEmpty == true;

  String get priceText => price?.amountFormatted() ?? "";

  bool get languagesAvailable => languages?.isNotEmpty == true;

  String? get contentAddress => address ?? region;

  double? get distanceKm => distance != null ? distance! / 1000 : null;

  ContentDetail copyWith({
    int? id,
    String? title,
    String? description,
    int? categoryId,
    String? categoryName,
    String? workingHours,
    List<double>? location,
    List<Facility>? facilities,
    List<String>? languages,
    List<String>? files,
    List<Attachments>? attachments,
    List<String>? photos,
    String? photo,
    List<Contacts>? contacts,
    double? ratingAverage,
    int? averageCheck,
    double? price,
    double? priceInDollar,
    String? address,
    bool? isFavorite,
    ViewType? viewType,
    DetailInfo? info,
  }) {
    return ContentDetail(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      workingHours: workingHours ?? this.workingHours,
      location: location ?? this.location,
      facilities: facilities ?? this.facilities,
      languages: languages ?? this.languages,
      photos: photos ?? this.photos,
      photo: photo ?? _photo,
      contacts: contacts ?? this.contacts,
      ratingAverage: ratingAverage ?? this.ratingAverage,
      averageCheck: averageCheck ?? this.averageCheck,
      price: price ?? this.price,
      priceInDollar: priceInDollar ?? this.priceInDollar,
      address: address ?? this.address,
      isFavorite: isFavorite ?? this.isFavorite,
      viewType: viewType ?? this.viewType,
      attachments: attachments ?? this.attachments,
      info: info ?? this.info,
    );
  }

  @override
  // TODO: implement props
  List<Object?> get props =>
      [
        id,
        title,
        description,
        categoryId,
        categoryName,
        workingHours,
        location,
        facilities,
        languages,
        attachments,
        photos,
        _photo,
        contacts,
        ratingAverage,
        averageCheck,
        price,
        priceInDollar,
        address,
        isFavorite,
        viewType,
        info,
      ];
}

class Contacts {
  final String? icon;
  final String? name;
  final String? contact;
  final String? action;

  const Contacts({this.icon, this.name, this.contact, this.action});

  String? get actionUrl {
    if(action==null) return null;

    String normalizedUrl = action!;
    if (normalizedUrl.startsWith('www.')) {
      normalizedUrl = 'https://$normalizedUrl';
    }


    return normalizedUrl;
  }
  String? get contactName {
    if (contact == null) return null;

    try {
      final uri = Uri.parse(contact!);
      // Agar uri scheme mavjud bo'lsa, URL deb hisoblaymiz va path ni olamiz
      if (uri.hasScheme) {
        return uri.path.isNotEmpty ? uri.path : uri.host;
      } else {
        return contact; // Telefon raqam yoki oddiy text
      }
    } catch (e) {
      // Parse bo‘lmasa ham original string qaytadi
      return contact;
    }
  }
}

class Facility {
  int id;
  String name;
  String? icon;

  Facility({required this.id, required this.name, this.icon});
}

class Field<T> {
  final String? name;
  final T? value;

  const Field({this.name, this.value});
}

class Attachments {
  final String? name;
  final String? file;
  final String? icon;

  Attachments({this.name, this.file, this.icon});
}

class DetailInfo {
  final InfoItem? left;
  final InfoItem? right;
  const DetailInfo({this.left, this.right});
}


class InfoItem{
  final String key;
  final String? value;
  final String? type;
  const InfoItem({required this.key, this.value, this.type});
}
// @freezed
// abstract class InfoItem with _$InfoItem {
//   const factory InfoItem.text({
//     required String key,
//     String? value}) =
//       InfoItemText;
//   const factory InfoItem.dollarRating({
//     int? value,
//   }) = InfoItemDollarRating;
//   const factory InfoItem.distance({
//     double? distance,
//   }) = InfoItemDistance;
//   const factory InfoItem.approximateCost({
//     int? cost,
//   }) = InfoItemApproximateCost;
//   const factory InfoItem.workTime({
//     String? start,
//     String? end,
//   }) = InfoItemWorkTime;
// }



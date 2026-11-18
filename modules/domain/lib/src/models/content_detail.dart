import 'package:domain/src/models/info_slug.dart';
import 'package:domain/src/models/info_state.dart';
import 'package:domain/src/models/info_type.dart';
import 'package:domain/src/models/view_type.dart';
import 'package:shared/shared.dart';

class ContentDetail extends Equatable {
  final int id;
  final String? title;
  final String? shortDescription;
  final String? description;
  final String? region;
  final double? distance;
  final int? reviewCount;

  final int? categoryId;
  final String? categoryName;
  final String? workingHours;
  final List<WorkingScheduleDay>? workingSchedule;
  final List<double>? location;
  final List<Facility>? facilities;
  final List<FacilityGroup>? facilityGroups;
  final List<String>? languages;
  final List<Attachments>? attachments;
  final List<String>? photos;
  final String? _photo;
  final List<Contacts>? contacts;
  final double? ratingAverage;
  final int? averageCheck;
  final double? price;
  final double? priceInDollar;
  final String? priceUnit;
  final DateTime? eventDate;
  final String? eventType;
  final String? address;
  final bool isFavorite;
  final ViewType viewType;
  final DetailInfo? info;

  const ContentDetail({
    required this.id,
    this.title,
    this.shortDescription,
    this.description,
    this.categoryId,
    this.categoryName,
    this.workingHours,
    this.workingSchedule,
    this.location,
    this.facilities,
    this.facilityGroups,
    this.languages,
    this.attachments,
    this.photos,
    String? photo,
    this.contacts,
    this.ratingAverage,
    this.averageCheck,
    this.price,
    this.priceInDollar,
    this.priceUnit,
    this.eventDate,
    this.eventType,
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

  bool get facilityGroupsAvailable => facilityGroups?.isNotEmpty == true;

  bool get workingScheduleAvailable => workingSchedule?.isNotEmpty == true;

  bool get workingHoursAvailable => workingHours?.isNotEmpty == true;

  bool get contactAvailable => contacts?.isNotEmpty == true;

  bool get infoAvailable => info?.items.isNotEmpty == true;

  bool get shortDescriptionAvailable => shortDescription?.isNotEmpty == true;

  String get priceText => price?.amountFormatted() ?? "";

  bool get languagesAvailable => languages?.isNotEmpty == true;

  String? get contentAddress => address ?? region;

  double? get distanceKm => distance != null ? distance! / 1000 : null;

  ContentDetail copyWith({
    int? id,
    String? title,
    String? shortDescription,
    String? description,
    int? categoryId,
    String? categoryName,
    String? workingHours,
    List<WorkingScheduleDay>? workingSchedule,
    List<double>? location,
    List<Facility>? facilities,
    List<FacilityGroup>? facilityGroups,
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
    String? priceUnit,
    DateTime? eventDate,
    String? eventType,
    String? address,
    String? region,
    double? distance,
    int? reviewCount,
    bool? isFavorite,
    ViewType? viewType,
    DetailInfo? info,
  }) {
    return ContentDetail(
      id: id ?? this.id,
      title: title ?? this.title,
      shortDescription: shortDescription ?? this.shortDescription,
      description: description ?? this.description,
      categoryId: categoryId ?? this.categoryId,
      categoryName: categoryName ?? this.categoryName,
      workingHours: workingHours ?? this.workingHours,
      workingSchedule: workingSchedule ?? this.workingSchedule,
      location: location ?? this.location,
      facilities: facilities ?? this.facilities,
      facilityGroups: facilityGroups ?? this.facilityGroups,
      languages: languages ?? this.languages,
      photos: photos ?? this.photos,
      photo: photo ?? _photo,
      contacts: contacts ?? this.contacts,
      ratingAverage: ratingAverage ?? this.ratingAverage,
      averageCheck: averageCheck ?? this.averageCheck,
      price: price ?? this.price,
      priceInDollar: priceInDollar ?? this.priceInDollar,
      priceUnit: priceUnit ?? this.priceUnit,
      eventDate: eventDate ?? this.eventDate,
      eventType: eventType ?? this.eventType,
      address: address ?? this.address,
      region: region ?? this.region,
      distance: distance ?? this.distance,
      reviewCount: reviewCount ?? this.reviewCount,
      isFavorite: isFavorite ?? this.isFavorite,
      viewType: viewType ?? this.viewType,
      attachments: attachments ?? this.attachments,
      info: info ?? this.info,
    );
  }

  @override
  List<Object?> get props => [
        id,
        title,
        shortDescription,
        description,
        categoryId,
        categoryName,
        workingHours,
        workingSchedule,
        location,
        facilities,
        facilityGroups,
        languages,
        attachments,
        photos,
        _photo,
        contacts,
        ratingAverage,
        averageCheck,
        price,
        priceInDollar,
        priceUnit,
        eventDate,
        eventType,
        address,
        region,
        distance,
        reviewCount,
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
    if (action == null) return null;

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
  final List<InfoItem> items;

  const DetailInfo({this.items = const []});
}

class InfoItem {
  final InfoSlug? slug;
  final String key;
  final String? value;
  final InfoType type;
  final InfoState? state;

  const InfoItem({
    this.slug,
    required this.key,
    this.value,
    this.type = InfoType.text,
    this.state,
  });
}

class WorkingScheduleDay {
  final int day;
  final String name;
  final bool isClosed;
  final String? from;
  final String? to;

  const WorkingScheduleDay({
    required this.day,
    required this.name,
    this.isClosed = false,
    this.from,
    this.to,
  });
}

class FacilityGroup {
  final String name;
  final List<Facility> facilities;

  const FacilityGroup({required this.name, this.facilities = const []});
}

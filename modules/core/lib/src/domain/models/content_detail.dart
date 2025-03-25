import 'package:core/src/shared/extensions.dart';
import 'package:core/src/shared/view_type.dart';

class ContentDetail {
  final int id;
  final String? title;
  final String? description;
  final int? categoryId;
  final String? categoryName;
  final Field<String?>? workingHours;
  final Field<List<double>>? location;
  final Field<List<Facility>>? facilities;
  final Field<List<String>>? languages;
  final Field<List<String>>? files;
  final List<String>? photos;
  final String? _photo;
  final Field<List<Contacts>>? contacts;
  final double? ratingAverage;
  final int? averageCheck;
  final double? price;
  final double? priceInDollar;
  final String? address;
  final bool isFavorite;
  final ViewType viewType;

  const ContentDetail(
      {required this.id,
      this.title,
      this.description,
      this.categoryId,
      this.categoryName,
      this.workingHours,
      this.location,
      this.facilities,
      this.languages,
      this.files,
      this.photos,
      String? photo,
      this.contacts,
      this.ratingAverage,
      this.averageCheck,
      this.price,
      this.priceInDollar,
      this.address,
      required this.viewType,
      this.isFavorite=false
      })
      : _photo = photo;

  String get image => _photo ?? photos?.firstOrNull ?? "";

  bool get facilitiesAvailable => facilities?.value?.isNotEmpty == true;

  bool get workingHoursAvailable => workingHours?.value?.isNotEmpty == true;

  bool get contactAvailable => contacts?.value?.isNotEmpty == true;

  String get priceText => price?.amountFormatted ?? "";

  bool get languagesAvailable => languages?.value?.isNotEmpty == true;

  ContentDetail copyWith({
    int? id,
    String? title,
    String? description,
    int? categoryId,
    String? categoryName,
    Field<String?>? workingHours,
    Field<List<double>>? location,
    Field<List<Facility>>? facilities,
    Field<List<String>>? languages,
    Field<List<String>>? files,
    List<String>? photos,
    String? photo,
    Field<List<Contacts>>? contacts,
    double? ratingAverage,
    int? averageCheck,
    double? price,
    double? priceInDollar,
    String? address,
    bool? isFavorite,
    ViewType? viewType,
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
      files: files ?? this.files,
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
    );
  }

}

class Contacts {
  final String? icon;
  final String? name;
  final String? contact;
  final String? action;

  const Contacts({this.icon, this.name, this.contact, this.action});
}

class Facility {
  int id;
  String name;
  String? icon;

  Facility({
    required this.id,
    required this.name,
    this.icon,
  });
}

class Field<T> {
  final String? name;
  final T? value;

  const Field({
    this.name,
    this.value,
  });
}

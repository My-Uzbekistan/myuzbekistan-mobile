import 'dart:convert';

import 'package:core/src/data/dto_models/categories_dto.dart';
import 'package:core/src/data/dto_models/places/place_dto_model.dart';
import 'package:core/src/domain/models/categories.dart';
import 'package:core/src/domain/models/place_model.dart';
import 'package:core/src/domain/repository.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: Repository)
class RepositoryImp implements Repository {
  @override
  Future<List<Categories>> loadCategories() async {
    final data =
        await rootBundle.loadString("packages/core/assets/category.json");
    List<dynamic> jsonResponse = jsonDecode(data);
    final categories = jsonResponse
        .map((e) => CategoriesDto.fromJson(e))
        .map((e) => Categories(id: e.id, name: e.name, icon: e.icon))
        .toList();

    return Future.value(categories);
  }

  @override
  Future<List<PlaceCategories>> loadContents() async {
    final data =
        await rootBundle.loadString("packages/core/assets/content.json");
    List<dynamic> jsonResponse = jsonDecode(data);
    final contents = jsonResponse
        .map((e) => PlaceCategoriesDto.fromJson(e))
        .map((e) => e.toDomain())
        .toList();

    return Future.value(contents);

  }
}

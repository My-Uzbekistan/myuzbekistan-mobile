import 'package:core/src/domain/models/categories.dart';
import 'package:core/src/domain/models/place_model.dart';

abstract interface class Repository {
  Future<List<Categories>> loadCategories();

  Future<List<PlaceCategories>> loadContents();
}

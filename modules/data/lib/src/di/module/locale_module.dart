


import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import '../../constants.dart';

@module
abstract class LocaleModule {


  @lazySingleton
  @preResolve
  @Named(StorageConstants.localeBox)
  Future<Box> localStorageBox() {
    return Hive.openBox(StorageConstants.localeBox);
  }

  @lazySingleton
  @preResolve
  @Named(StorageConstants.securityBox)
  Future<Box> securityStorageBox() {
    return Hive.openBox(StorageConstants.securityBox);
  }
}
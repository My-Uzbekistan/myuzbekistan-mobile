

import 'package:core/core.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';

// abstract interface class ProfileServiceListener {
//   late Stream<UserModel?> userModelStream;
//
//   void updateUserModel(UserModel? model);
//
//   void dispose();
// }
//
//
// @LazySingleton(as: ProfileServiceListener)
// class ProfileServiceListenerImpl extends ProfileServiceListener {
//   final BehaviorSubject<UserModel?> _userModelStream = BehaviorSubject();
//
//   @override
//   Stream<UserModel?> get userModelStream => _userModelStream.stream;
//
//   @override
//   void updateUserModel(UserModel? model) {
//     _userModelStream.value = model;
//   }
//
//   @override
//   void dispose() {
//     _userModelStream.close();
//   }
// }

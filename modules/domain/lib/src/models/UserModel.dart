
import 'package:shared/shared.dart';

class UserModel {
  final String? name;
  final String? email;
  final String? photoUrl;
  final String? phoneNumber;
  final bool? isUtcClient;


  UserModel({this.name, this.email, this.photoUrl, this.phoneNumber,this.isUtcClient});

  factory UserModel.fromJson(dynamic json) => UserModel(
    name: json["name"],
    email: json["email"],
    photoUrl: json["photoUrl"],
    phoneNumber: json["phoneNumber"],
    isUtcClient: json["isUtcClient"],
  );

  Map<String, String?> toJson() {
    return {"name": name, "email": email, "photoUrl": photoUrl, "phoneNumber": phoneNumber};
  }

  String get userName {

    if (phoneNumber != null && phoneNumber!.isNotEmpty) {
      return phoneNumber!.phoneFormat();
    }
    if (name != null && name!.isNotEmpty) {
      return name!;
    }

    if (email != null && email!.isNotEmpty) {
      return email!;
    }

    return "";
  }
}

class UserModel {
  final String? name;
  final String? email;
  final String? photoUrl;

  UserModel({this.name, this.email, this.photoUrl});

  factory UserModel.fromJson(dynamic json) => UserModel(
        name: json["name"],
        email: json["email"],
        photoUrl: json["photoUrl"],
      );

  Map<String, String?> toJson() {
    return {"name": name, "email": email, "photoUrl": photoUrl};
  }
}

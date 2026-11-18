import 'registration_method.dart';

class UserProfile {
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? avatar;
  final bool canChangeAvatar;
  final RegistrationMethod? registrationMethod;

  const UserProfile({
    this.firstName,
    this.lastName,
    this.phone,
    this.avatar,
    this.canChangeAvatar = false,
    this.registrationMethod,
  });

  String get fullName =>
      [firstName, lastName].whereType<String>().join(" ").trim();

  UserProfile withAvatar(String? url) => UserProfile(
    firstName: firstName,
    lastName: lastName,
    phone: phone,
    avatar: url,
    canChangeAvatar: canChangeAvatar,
    registrationMethod: registrationMethod,
  );
}

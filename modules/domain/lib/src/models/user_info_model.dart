/// GET auth/user-info javobi.
///
/// Avatar (profil rasmi) shu yerdan o'qiladi — JWT dan emas.
/// Premium tugasa [profilePictureUrl] `null` bo'ladi, qayta premium
/// sotib olinsa eski rasm qaytadi.
class UserInfoModel {
  final String? name;
  final num? balance;
  final String? profilePictureUrl;
  final bool? pushEnabled;

  const UserInfoModel({
    this.name,
    this.balance,
    this.profilePictureUrl,
    this.pushEnabled,
  });
}

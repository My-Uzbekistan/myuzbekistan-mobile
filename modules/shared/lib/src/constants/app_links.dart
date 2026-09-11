mixin AppLinks {
  static const String scheme = "myuz";
  static const String host = "myuz.uz";
  static const String altHost = "myuzb.uz";
  static const String base = "https://$host";

  static bool isInternalHost(String uriHost) =>
      uriHost.isEmpty ||
      uriHost == host ||
      uriHost == "www.$host" ||
      uriHost == altHost ||
      uriHost == "www.$altHost";
}

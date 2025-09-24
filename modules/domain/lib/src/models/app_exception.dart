class AppException implements Exception {
  final String? statusCode;
  final String? code;
  final String? message;

  AppException({this.statusCode, this.code, this.message});

  factory AppException.fromJson(Map<String, dynamic> json) {
    return AppException(
      statusCode: json['Status']?.toString(),
      code: json['code']?.toString(),
      message: json['message']?.toString(),
    );
  }

  static AppException unknown([String? message]) => AppException();

  @override
  String toString() {
    return 'AppException(statusCode: $statusCode, code: $code, message: $message)';
  }
}

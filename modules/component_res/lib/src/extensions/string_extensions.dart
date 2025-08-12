extension StringExtensions on String {
  String take(int n) {
    if (n >= length) return this;
    return substring(0, n);
  }

  String withOutSpace() {
    return replaceAll(RegExp(r'\s+'), '');
  }

  String plus(String text) => "$this$text";
}

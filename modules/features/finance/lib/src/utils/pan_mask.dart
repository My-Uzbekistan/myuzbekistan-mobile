extension PanMask on String {
  String get maskedPan {
    final digits = replaceAll(RegExp(r'\D'), '');
    if (digits.isEmpty) return '';

    final masked =
        digits.length > 10
            ? '${digits.substring(0, 6)}'
                '${'•' * (digits.length - 10)}'
                '${digits.substring(digits.length - 4)}'
            : digits;

    return masked
        .replaceAllMapped(RegExp(r'.{4}'), (match) => '${match.group(0)} ')
        .trim();
  }
}

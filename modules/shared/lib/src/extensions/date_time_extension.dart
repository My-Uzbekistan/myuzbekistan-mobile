import 'package:intl/intl.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

extension DatetTimeX on DateTime? {


  String toFormatDMMMY(String langCode) {
    try {
      String formatterDate = DateFormat('d MMMM y', langCode).format(this!);
      return formatterDate;
    } catch (e) {
      debugPrint("DateTime format exaption ${e}");
      return "";
    }
  }

  String toFormatMMMY() {
    try {
      String formatterDate = DateFormat('MMMM y').format(this!);
      return formatterDate;
    } catch (e) {
      debugPrint("DateTime format exaption ${e}");
      return "";
    }
  }
  String toFormatDMMM() {
    try {
      String formatterDate = DateFormat('d MMMM').format(this!);
      return formatterDate;
    } catch (e) {
      debugPrint("DateTime format exaption ${e}");
      return "";
    }
  }
  String yyyyMMddHHmm() {
    final day = this?.day.toString().padLeft(2, '0');
    final month = this?.month.toString().padLeft(2, '0');
    final year = this?.year;
    final hour = this?.hour.toString().padLeft(2, '0');
    final minute = this?.minute.toString().padLeft(2, '0');
    return '$day.$month.$year $hour:$minute';
  }

}

extension FormattedDate on DateTime {
  String format({String format = DateTimeFormats.date}) {
    try {
      final outputFormat = DateFormat(format);
      return outputFormat.format(this);
    } catch (e) {
      debugPrint("Invalid DateTime format: $e");
      return "";
    }
  }
}

// extension StindDate on String {
//   String format({String format = DateTimeFormats.dateTime}) {
//     DateFormat inputFormat = DateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'");
//     DateFormat outputFormat = DateFormat(format);
//     try {
//       DateTime dateTime = inputFormat.parseUtc(this);
//       DateTime uzbekistanTime = dateTime.add(const Duration(hours: 5));
//       String formattedDate = outputFormat.format(uzbekistanTime);
//       return formattedDate;
//     } catch (e) {
//       debugPrint("Invalid date format");
//     }
//     return "";
//   }
// }



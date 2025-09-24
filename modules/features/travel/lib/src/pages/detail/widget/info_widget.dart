import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

class InfoWidget extends StatelessWidget {
  final DetailInfo info;

  const InfoWidget({super.key, this.info = const DetailInfo()});

  @override
  Widget build(BuildContext context) {
    final leftValue =
        info.left == null
            ? emptyWidget()
            : textWidget(title: info.left?.key ?? "", value: info.left?.value);
    final rightValue =
        info.right == null
            ? emptyWidget()
            : textWidget(
              title: info.right?.key ?? "",
              value: info.right?.value,
            );
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 24, bottom: 16),
            child: IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(child: leftValue),
                  VerticalDivider(
                    thickness: 1,
                    color: context.appColors.stroke.nonOpaque,
                    width: 32,
                  ),
                  Expanded(child: rightValue),
                ],
              ),
            ),
          ),
          Divider(color: context.appColors.stroke.nonOpaque, thickness: 1),
        ],
      ),
    );
  }

  // Widget buildInfoItem(BuildContext context, InfoItem? item) {
  //   return item?.map(
  //         text: (text) {
  //           return textWidget(title: text.key, value: text.value ?? "");
  //         },
  //         dollarRating: (rating) {
  //           return textWidget(
  //             title: context.localization.priceCategory,
  //             valueWidget: PriceCategory(
  //               priceCategory: rating.value ?? 0,
  //               textStyle: CustomTypography.labelLg,
  //             ),
  //           );
  //         },
  //         distance: (dis) {
  //           return textWidget(
  //             title: context.localization.distanceFromYou,
  //             value: distanceText(context, dis.distance.toString()),
  //           );
  //         },
  //         approximateCost: (cost) {
  //           return textWidget(
  //             title: context.localization.price,
  //             value: "≈\$${cost.cost}",
  //           );
  //         },
  //         workTime: (time) {
  //           return _WorkTimeItem(info: time);
  //         },
  //       ) ??
  //       emptyWidget();
  // }

  Widget textWidget({
    required String title,
    String? value,
    // Widget? valueWidget,
  }) {
    return Column(
      spacing: 3,
      children: [
        Text(title, maxLines: 1, overflow: TextOverflow.ellipsis).bodySm(),
        Text(
          value ?? "",
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ).labelLg(),
      ],
    );
  }

  Widget emptyWidget() {
    return Column(
      spacing: 3,
      children: [
        Text("Empty").bodySm(),
        Text("-- : --", maxLines: 1, overflow: TextOverflow.ellipsis).labelLg(),
      ],
    );
  }

  String distanceText(BuildContext context, String? distanceText) {
    try {
      final distance = double.parse(distanceText ?? '0');
      if (distance < 1000) {
        return "${distance.floor()} ${context.localization.distanceM}";
      }
      final distanceKm = distance / 1000;
      final rounded = double.parse(distanceKm.toStringAsFixed(1));
      final result =
          rounded % 1 == 0 ? rounded.toInt().toString() : rounded.toString();
      return "$result ${context.localization.distanceKm}";
    } catch (e) {
      return distanceText ?? "";
    }
  }
}

// class _WorkTimeItem extends StatelessWidget {
//   final InfoItemWorkTime info;
//
//   const _WorkTimeItem({super.key, required this.info});
//
//   bool isNowWithinRange(String? start, String? end) {
//     if (start == null || end == null) return false;
//     final now = DateTime.now();
//     bool isTimeOnly(String s) => RegExp(r'^\s*\d{1,2}:\d{2}\s*$').hasMatch(s);
//     bool isDateTime(String s) =>
//         RegExp(r'^\s*\d{4}-\d{2}-\d{2}\s+\d{1,2}:\d{2}\s*$').hasMatch(s);
//
//     DateTime? tryParse(String s) {
//       final text = s.trim();
//       if (isTimeOnly(text)) {
//         final parts = text.split(':');
//         final hour = int.parse(parts[0]);
//         final minute = int.parse(parts[1]);
//         return DateTime(now.year, now.month, now.day, hour, minute);
//       } else if (isDateTime(text)) {
//         final iso = text.replaceFirst(RegExp(r'\s+'), 'T');
//         return DateTime.parse(iso);
//       } else {
//         return null;
//       }
//     }
//
//     final startIsTimeOnly = isTimeOnly(start);
//     final endIsTimeOnly = isTimeOnly(end);
//
//     final startDt = tryParse(start);
//     var endDt = tryParse(end);
//
//     if (startDt == null || endDt == null) return false;
//
//     if (startIsTimeOnly &&
//         endIsTimeOnly &&
//         (endDt.isBefore(startDt) || endDt.isAtSameMomentAs(startDt))) {
//       endDt = endDt.add(const Duration(days: 1));
//     }
//
//     final started = now.isAfter(startDt) || now.isAtSameMomentAs(startDt);
//     final notEnded = now.isBefore(endDt) || now.isAtSameMomentAs(endDt);
//
//     return started && notEnded;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       spacing: 3,
//       children: [
//         Text(
//           context.localization.workingHours,
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ).bodySm(
//           color:
//               isNowWithinRange(info.start, info.end)
//                   ? context.appColors.colors.green
//                   : context.appColors.colors.red,
//         ),
//         Text(
//           "${info.start} – ${info.end}",
//           maxLines: 1,
//           overflow: TextOverflow.ellipsis,
//         ).labelLg(),
//       ],
//     );
//   }
// }

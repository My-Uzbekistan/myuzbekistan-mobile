import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';
import 'package:travel/src/core/extension.dart';

class PrayerTimesItemModel {
  final DateTime time;
  final PrayerTimesType type;
  final bool isNext;

  PrayerTimesItemModel({
    required this.time,
    required this.type,
    this.isNext = false,
  });

  PrayerTimesItemModel copyWith({bool? isNext}) {
    return PrayerTimesItemModel(
      time: time,
      type: type,
      isNext: isNext ?? this.isNext,
    );
  }

  bool get isAfter => time.isAfter(DateTime.now());

  String get timeString {
    return DateFormat.Hm().format(time);
    // "${time.hour.toString().padLeft(2,"0")}:${time.minute.toString().padLeft(2,"0")}"  ;
  }

  static List<PrayerTimesItemModel> markNext(List<PrayerTimesItemModel> times) {
    final now = DateTime.now();
    PrayerTimesItemModel? next;
    try {
      next = times.firstWhere((item) => item.time.isAfter(now));
    } catch (_) {
      next = null;
    }
    return times.map((item) {
      if (next != null && item == next) {
        return item.copyWith(isNext: true);
      }
      return item.copyWith(isNext: false);
    }).toList();
  }
}

enum PrayerTimesType { fajr, sunrise, dhuhr, asr, maghrib, isha }

class PrayersWidgets extends StatefulWidget {
  final List<PrayerTimesItemModel> prayerTimes;

  const PrayersWidgets({super.key, required this.prayerTimes});

  @override
  State<PrayersWidgets> createState() => _PrayersWidgetsState();
}

class _PrayersWidgetsState extends State<PrayersWidgets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 16, bottom: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: 12,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(context.localization.prayerTimeTitle).h3(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children:
                  widget.prayerTimes
                      .map(
                        (e) => Expanded(
                          child: PrayerTimesItemWidget(itemModel: e),
                        ),
                      )
                      .toList(),
            ),
          ),
        ],
      ),
    ).shadow(context);
  }
}

class PrayerTimesItemWidget extends StatelessWidget {
  final PrayerTimesItemModel itemModel;

  const PrayerTimesItemWidget({super.key, required this.itemModel});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      curve: Curves.easeInOut,
      padding: EdgeInsets.symmetric(vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: itemModel.isNext ? context.appColors.nonOpaque.brand : null,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Text(itemModel.timeString).labelSm(),
          SizedBox(
            height: 32,
            width: 32,
            child: Center(
              child: SizedBox(
                height: 20,
                width: 20,
                child: icons(itemModel.type),
              ),
            ),
          ),
          Text(
            context.localization.prayerTime(itemModel.type.name),
          ).bodyXsm(color: context.appColors.textIconColor.secondary),
        ],
      ),
    );
  }

  Widget icons(PrayerTimesType type) {
    return switch (type) {
      PrayerTimesType.fajr => Assets.prayersFajr.toSvgImage(
        fit: BoxFit.contain,
        tintColor: const Color(0xffBC8C83),
      ),
      PrayerTimesType.sunrise => Assets.prayersSunrise.toSvgImage(
        fit: BoxFit.contain,
        tintColor: const Color(0xffFBDB7C),
      ),
      PrayerTimesType.dhuhr => Assets.prayersDhuhr.toSvgImage(
        fit: BoxFit.contain,
        tintColor: const Color(0xffFFCA2D),
      ),
      PrayerTimesType.asr => Assets.prayersAsr.toSvgImage(
        fit: BoxFit.contain,
        tintColor: const Color(0xffFFBC2D),
      ),
      PrayerTimesType.maghrib => Assets.prayersMagrib.toSvgImage(
        fit: BoxFit.contain,
        tintColor: const Color(0xffFF922D),
      ),
      PrayerTimesType.isha => Assets.prayersIsha.toSvgImage(
        fit: BoxFit.contain,
        tintColor: const Color(0xff7496A6),
      ),
    };
  }
}

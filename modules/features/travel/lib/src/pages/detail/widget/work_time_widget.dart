import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:travel/src/core/extension.dart';

import 'section_title.dart';

class WorkTimeWidget extends StatelessWidget {
  final String? title;
  final List<WorkingScheduleDay> schedule;

  const WorkTimeWidget({super.key, this.title, this.schedule = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionTitle(title ?? ""),
        ...schedule.map(
          (day) => Padding(
            padding: const EdgeInsets.symmetric(vertical: 6),
            child: Text(_format(context, day), maxLines: 1).bodyLg(),
          ),
        ),
      ],
    );
  }

  String _format(BuildContext context, WorkingScheduleDay day) {
    if (day.isClosed || day.from == null || day.to == null) {
      return "${day.name}, ${context.localization.closed}";
    }
    return "${day.name}, ${day.from} – ${day.to}";
  }
}

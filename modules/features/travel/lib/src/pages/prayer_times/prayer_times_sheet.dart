import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/core/extension.dart';

import 'bloc/prayer_times_bloc.dart';
import 'widgets/prayer_date_switcher.dart';
import 'widgets/prayer_location_cell.dart';
import 'widgets/prayer_time_cell.dart';
import 'widgets/prayer_times_header.dart';
import 'widgets/prayer_times_shimmer.dart';

class PrayerTimesSheet extends StatelessWidget {
  const PrayerTimesSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.appColors;
    return Scaffold(
      backgroundColor: colors.background.elevation1,
      body: BlocConsumer<PrayerTimesBloc, PrayerTimesState>(
        listenWhen: (prev, cur) =>
            cur.errorMessage != null && prev.errorMessage != cur.errorMessage,
        listener: (context, state) {
          if (state.errorMessage != null) {
            Toast.showToast(state.errorMessage!);
          }
        },
        builder: (context, state) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              PrayerTimesHeader(
                title: context.localization.prayerTimeTitle,
                onClose: () => context.pop(),
              ),
              Flexible(
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  padding: const EdgeInsets.only(top: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    spacing: 16,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          spacing: 8,
                          children: [
                            PrayerLocationCell(
                              title: context.localization.prayerLocation,
                              locationName: state.locationName,
                              onTap: state.locations.isEmpty
                                  ? null
                                  : () => _selectLocation(context, state),
                            ),
                            PrayerDateSwitcher(
                              dateText: state.prayerTimes?.dateText ?? "",
                              onPrevious: () => context
                                  .read<PrayerTimesBloc>()
                                  .add(const PrayerTimesEvent.changeDay(-1)),
                              onNext: () => context
                                  .read<PrayerTimesBloc>()
                                  .add(const PrayerTimesEvent.changeDay(1)),
                            ),
                          ],
                        ),
                      ),
                      if (state.isLoading && state.prayerTimes == null)
                        const PrayerTimesShimmer()
                      else
                        _PrayerList(state: state),
                      SizedBox(
                        height: MediaQuery.paddingOf(context).bottom + 16,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Future<void> _selectLocation(
    BuildContext context,
    PrayerTimesState state,
  ) async {
    final bloc = context.read<PrayerTimesBloc>();
    final result = await context.travel.pushPrayerLocation(
      state.locations,
      state.locationId,
    );
    if (result is PrayerLocation) {
      bloc.add(PrayerTimesEvent.changeLocation(result.id));
    }
  }
}

class _PrayerList extends StatelessWidget {
  const _PrayerList({required this.state});

  final PrayerTimesState state;

  @override
  Widget build(BuildContext context) {
    final times = state.prayerTimes?.times ?? [];
    if (times.isEmpty) return const SizedBox.shrink();
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        for (final item in times)
          PrayerTimeCell(
            item: item,
            showReminder: state.canUseReminders,
            isReminderOn: state.reminders.contains(item.key),
            onReminderTap: () => context.read<PrayerTimesBloc>().add(
              PrayerTimesEvent.toggleReminder(item.key),
            ),
          ),
      ],
    ).shadow(context, borderRadius: BorderRadius.circular(20));
  }
}

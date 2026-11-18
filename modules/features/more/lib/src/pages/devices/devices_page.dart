import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:more/src/core/extension.dart';
import 'package:more/src/pages/devices/bloc/devices_bloc.dart';
import 'package:more/src/pages/devices/widgets/device_session_cell.dart';
import 'package:more/src/pages/devices/widgets/device_session_sheet.dart';
import 'package:shared/shared.dart' hide Toast;

class DevicesPage extends StatelessWidget {
  const DevicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = context.localization;
    final bloc = context.read<DevicesBloc>();
    final topPadding =
        GradientAppBar.navbarHeight + MediaQuery.paddingOf(context).top + 20;

    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: context.appColors.background.underlayer,
      appBar: GradientAppBar(
        title: localization.devices,
        centerTitle: true,
        toolbarHeight: GradientAppBar.navbarHeight,
      ),
      body: BlocConsumer<DevicesBloc, DevicesState>(
        bloc: bloc,
        listenWhen:
            (previous, current) =>
                current.errorMessage != null &&
                previous.errorMessage != current.errorMessage,
        listener: (context, state) => Toast.showToast(state.errorMessage!),
        builder: (context, state) {
          return RefreshIndicator.adaptive(
            displacement: topPadding,
            triggerMode: RefreshIndicatorTriggerMode.anywhere,
            onRefresh: () async {
              bloc.add(DevicesEvent.fetch());
              await bloc.stream.firstWhere((state) => !state.isLoading);
            },
            child: CustomScrollView(
              physics: const BouncingScrollPhysics(
                parent: AlwaysScrollableScrollPhysics(),
              ),
              slivers: [
                SliverToBoxAdapter(child: SizedBox(height: topPadding)),
                SliverToBoxAdapter(child: _body(context, state)),
                SliverToBoxAdapter(
                  child: SizedBox(
                    height: MediaQuery.paddingOf(context).bottom + 20,
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  Widget _body(BuildContext context, DevicesState state) {
    if (state.isLoading && state.sessions.isEmpty) {
      return Shimmer.fromDefault(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          spacing: 8,
          children: const [
            ShimmerDefaultContainer(height: 184, radius: 20),
            ShimmerDefaultContainer(height: 276, radius: 20),
          ],
        ),
      );
    }

    final localization = context.localization;
    final currentSession = state.currentSession;
    final otherSessions = state.otherSessions;

    return Column(
      spacing: 8,
      children: [
        if (currentSession != null)
          _card(
            context,
            title: localization.thisDevice,
            children: [
              DeviceSessionCell(session: currentSession),
              AppActionButton(
                actionText: localization.terminateOtherSessions,
                type: ActionButtonType.secondary,
                contentColor: context.appColors.colors.red,
                isLoading: state.isTerminatingOthers,
                onPressed: () => _confirmTerminateOthers(context),
              ),
            ],
          ),
        _card(
          context,
          title: localization.activeSessions,
          children: [
            if (otherSessions.isEmpty)
              Text(
                localization.noActiveSessions,
              ).bodyMd(color: context.appColors.textIconColor.tertiary)
            else
              ...otherSessions.map(
                (session) => DeviceSessionCell(
                  session: session,
                  isTerminating: state.terminatingId == session.id,
                  onTap: () => _openSession(context, session: session),
                ),
              ),
          ],
        ),
      ],
    );
  }

  Widget _card(
    BuildContext context, {
    required String title,
    required List<Widget> children,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: context.appColors.background.elevation1,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title).labelLg(color: context.appColors.textIconColor.primary),
          ...children,
        ],
      ),
    );
  }

  Future<void> _openSession(
    BuildContext context, {
    required DeviceSession session,
  }) async {
    final bloc = context.read<DevicesBloc>();
    final shouldTerminate = await showDeviceSessionSheet(
      context,
      session: session,
    );

    if (shouldTerminate ?? false) {
      bloc.add(DevicesEvent.terminateSession(sessionId: session.id));
    }
  }

  void _confirmTerminateOthers(BuildContext context) {
    final bloc = context.read<DevicesBloc>();
    showActionAlertDialog(
      context,
      title: context.localization.terminateConfirmTitle,
      message: context.localization.terminateOtherSessionsMessage,
      firstActionText: context.localization.terminate,
      firstButtonTextColor: context.appColors.colors.red,
      secondActionText: context.localization.cancel,
      onFirstButtonClick: () {
        bloc.add(DevicesEvent.terminateOthers());
      },
    );
  }
}

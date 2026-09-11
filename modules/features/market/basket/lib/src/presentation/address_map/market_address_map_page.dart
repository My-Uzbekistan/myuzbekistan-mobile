import 'package:basket/src/core/extension.dart';
import 'package:basket/src/presentation/address_map/bloc/address_map_bloc.dart';
import 'package:component_res/component_res.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart' hide Toast;

class MarketAddressMapPage extends HookWidget {
  const MarketAddressMapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<AddressMapBloc>();
    final sheetKey = useMemoized(() => GlobalKey());
    final sheetHeight = useState(140.0);
    final topInset = MediaQuery.paddingOf(context).top + 48;

    useEffect(() {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        final box = sheetKey.currentContext?.findRenderObject() as RenderBox?;
        if (box == null) return;
        sheetHeight.value = box.size.height;
      });
      return null;
    });

    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: BlocConsumer<AddressMapBloc, AddressMapState>(
        bloc: bloc,
        listenWhen: (previous, current) =>
            previous.isFinished != current.isFinished ||
            (current.errorMessage != null &&
                previous.errorMessage != current.errorMessage),
        listener: (context, state) {
          if (state.isDeleted) {
            context.pop();
            return;
          }
          final saved = state.savedAddress;
          if (saved != null) {
            context.pop(saved);
            return;
          }
          if (state.errorMessage != null) {
            Toast.showToast(state.errorMessage!);
          }
        },
        builder: (context, state) {
          final bottomInset = sheetHeight.value;

          return Stack(
            children: [
              Positioned.fill(
                child: _map(context, bloc, state, topInset, bottomInset),
              ),
              Positioned.fill(
                child: Padding(
                  padding: EdgeInsets.only(top: topInset, bottom: bottomInset),
                  child: Center(
                    child: MapLocationPin(isLifted: state.isPanning),
                  ),
                ),
              ),
              Positioned(
                right: 16,
                bottom: bottomInset + 96,
                child: _zoomControls(context, bloc),
              ),
              Positioned(
                right: 16,
                bottom: bottomInset + 32,
                child: _controlButton(
                  context,
                  icon: Assets.svg.locatorFill,
                  onTap: () => bloc.add(const AddressMapEvent.moveToMyLocation()),
                ),
              ),
              Positioned(
                top: MediaQuery.paddingOf(context).top,
                left: 0,
                right: 0,
                child: _navbar(context, bloc, state),
              ),
              Positioned(
                left: 0,
                right: 0,
                bottom: 0,
                child: KeyedSubtree(
                  key: sheetKey,
                  child: _bottomSheet(context, bloc, state),
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _map(
    BuildContext context,
    AddressMapBloc bloc,
    AddressMapState state,
    double topInset,
    double bottomInset,
  ) {
    return GoogleMap(
      style: MapStyleService.of(Theme.of(context).brightness),
      initialCameraPosition: state.initialCamera,
      padding: EdgeInsets.only(top: topInset, bottom: bottomInset),
      myLocationEnabled: true,
      myLocationButtonEnabled: false,
      zoomControlsEnabled: false,
      compassEnabled: false,
      mapToolbarEnabled: false,
      onMapCreated: (controller) =>
          bloc.add(AddressMapEvent.mapCreated(controller)),
      onCameraMove: (position) =>
          bloc.add(AddressMapEvent.cameraMoved(position)),
      onCameraIdle: () => bloc.add(const AddressMapEvent.cameraIdle()),
      gestureRecognizers: {
        Factory<OneSequenceGestureRecognizer>(
          () => MapPanRecognizer(
            onPanStart: () => bloc.add(const AddressMapEvent.panChanged(true)),
            onPanEnd: () => bloc.add(const AddressMapEvent.panChanged(false)),
          ),
        ),
      },
    );
  }

  Widget _navbar(
    BuildContext context,
    AddressMapBloc bloc,
    AddressMapState state,
  ) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      child: SizedBox(
        height: 44,
        child: Row(
          spacing: 8,
          children: [
            RoundedButton(
              assetsSvgIcon: Assets.svg.icBackChevron.path,
              onPressed: () => context.pop(),
            ),
            Expanded(
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 4,
                ),
                decoration: BoxDecoration(
                  color: context.appColors.background.elevation1,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  context.localization.basket_map_title,
                  textAlign: TextAlign.center,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ).labelMd(color: context.appColors.textIconColor.primary),
              ),
            ),
            if (state.isEdit)
              RoundedButton(
                assetsSvgIcon: Assets.svg.trash01.path,
                iconColor: context.appColors.colors.red,
                onPressed: () => _confirmDelete(context, bloc),
              ),
          ],
        ),
      ),
    );
  }

  Widget _zoomControls(BuildContext context, AddressMapBloc bloc) {
    return Container(
      decoration: BoxDecoration(
        color: context.appColors.textIconColor.oposite,
        borderRadius: BorderRadius.circular(34),
        boxShadow: [
          BoxShadow(
            color: context.appColors.service.shadow,
            blurRadius: 34,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _zoomButton(
            context,
            icon: Assets.svg.plusMedium,
            onTap: () => bloc.add(const AddressMapEvent.zoomIn()),
          ),
          _zoomButton(
            context,
            icon: Assets.svg.minusMedium,
            onTap: () => bloc.add(const AddressMapEvent.zoomOut()),
          ),
        ],
      ),
    );
  }

  Widget _zoomButton(
    BuildContext context, {
    required SvgGenImage icon,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: SizedBox.square(
          dimension: 24,
          child: icon.path.toSvgImage(
            fit: BoxFit.contain,
            tintColor: context.appColors.textIconColor.primary,
          ),
        ),
      ),
    );
  }

  Widget _controlButton(
    BuildContext context, {
    required SvgGenImage icon,
    required VoidCallback onTap,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: context.appColors.textIconColor.oposite,
        borderRadius: BorderRadius.circular(34),
        boxShadow: [
          BoxShadow(
            color: context.appColors.service.shadow,
            blurRadius: 34,
            offset: const Offset(0, 6),
          ),
        ],
      ),
      child: _zoomButton(context, icon: icon, onTap: onTap),
    );
  }

  Widget _bottomSheet(
    BuildContext context,
    AddressMapBloc bloc,
    AddressMapState state,
  ) {
    final address = state.address;
    final lines = [
      if (address != null) address.line,
      if (address?.district != null) address!.district!,
    ].where((line) => line.isNotEmpty).join("\n");

    return Container(
      decoration: BoxDecoration(
        color: context.appColors.background.base,
        borderRadius: const BorderRadius.vertical(top: Radius.circular(24)),
      ),
      padding: EdgeInsets.only(
        left: 8,
        right: 8,
        top: 8,
        bottom: MediaQuery.paddingOf(context).bottom + 8,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        spacing: 8,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: state.isAddressLoading
                ? const Shimmer.fromDefault(
                    child: Column(
                      spacing: 6,
                      children: [
                        ShimmerDefaultContainer(height: 16, radius: 8),
                        ShimmerDefaultContainer(
                          height: 16,
                          width: 180,
                          radius: 8,
                        ),
                      ],
                    ),
                  )
                : SizedBox(
                    width: double.infinity,
                    child: Text(
                      lines.isEmpty
                          ? context.localization.basket_map_address_empty
                          : lines,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ).labelLg(
                      color: lines.isEmpty
                          ? context.appColors.textIconColor.tertiary
                          : context.appColors.textIconColor.primary,
                    ),
                  ),
          ),
          AppActionButton(
            actionText: state.isEdit
                ? context.localization.basket_map_save
                : context.localization.basket_map_add,
            sizeType: ActionButtonSizeType.large,
            isLoading: state.isSaving,
            onPressed: state.canSave
                ? () => bloc.add(const AddressMapEvent.save())
                : null,
          ),
        ],
      ),
    );
  }

  void _confirmDelete(BuildContext context, AddressMapBloc bloc) {
    showActionAlertDialog(
      context,
      title: context.localization.basket_map_delete_title,
      message: context.localization.basket_map_delete_message,
      firstActionText: context.localization.basket_action_delete,
      firstButtonTextColor: context.appColors.colors.red,
      secondActionText: context.localization.basket_cancel,
      onFirstButtonClick: () => bloc.add(const AddressMapEvent.delete()),
    );
  }
}

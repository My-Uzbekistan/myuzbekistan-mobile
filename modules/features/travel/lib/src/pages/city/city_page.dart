import 'package:component_res/component_res.dart';
import 'package:domain/domain.dart';
import 'package:flutter/material.dart';
import 'package:navigation/navigation.dart';
import 'package:shared/shared.dart' hide Toast;
import 'package:travel/src/pages/city/bloc/city_bloc.dart';
import 'package:travel/src/pages/city/widget/city_block_section.dart';
import 'package:travel/src/pages/city/widget/city_location_section.dart';
import 'package:travel/src/pages/city/widget/city_summary.dart';
import 'package:travel/src/pages/city/widget/city_tickets_section.dart';

class CityPage extends StatelessWidget {
  const CityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: BlocConsumer<CityBloc, CityState>(
        listenWhen: (prev, cur) =>
            cur.errorMessage != null && prev.errorMessage != cur.errorMessage,
        listener: (context, state) {
          if (state.errorMessage != null) {
            Toast.showToast(state.errorMessage!);
          }
        },
        builder: (context, state) {
          final city = state.city;
          return Stack(
            children: [
              if (city != null)
                _CityBody(city: city)
              else if (state.isLoading)
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: LoadingIndicator(),
                  ),
                ),
              Positioned(
                left: 16,
                top: MediaQuery.paddingOf(context).top,
                child: RoundedButton.arrowLeft(onPressed: () => context.pop()),
              ),
            ],
          );
        },
      ),
    );
  }
}

class _CityBody extends StatelessWidget {
  final CityDetail city;

  const _CityBody({required this.city});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          expandedHeight: 312,
          stretch: true,
          automaticallyImplyLeading: false,
          scrolledUnderElevation: 0,
          elevation: 0,
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          systemOverlayStyle: context.systemUiOverlyStyle.copyWith(
            statusBarBrightness: Brightness.dark,
          ),
          flexibleSpace: FlexibleSpaceBar(
            collapseMode: CollapseMode.parallax,
            stretchModes: const [StretchMode.zoomBackground],
            background: _CityPhoto(photo: city.photo),
          ),
        ),
        SliverList(delegate: SliverChildListDelegate(_sections(context))),
      ],
    );
  }

  List<Widget> _sections(BuildContext context) {
    final location = city.location;
    final tickets = city.tickets;
    final sections = <Widget>[
      CitySummary(name: city.name, subtitle: city.subtitle),
      if (location != null) CityLocationSection(location: location),
    ];

    final blocks = <Widget>[
      for (final block in city.blocks)
        CityBlockSection(
          block: block,
          onSeeAll: () => context.travel.pushContentByCategoryPage(
            block.title,
            block.categoryId,
          ),
          onItemTap: (item) => context.travel.pushDetailPage(
            contentId: item.contentId,
            content: item.toContentDetail(categoryName: block.title),
          ),
        ),
    ];
    if (tickets != null && tickets.items.isNotEmpty) {
      blocks.insert(
        blocks.isEmpty ? 0 : 1,
        CityTicketsSection(tickets: tickets),
      );
    }

    return [
      ...sections,
      ...blocks,
      SizedBox(height: MediaQuery.paddingOf(context).bottom + 16),
    ];
  }
}

class _CityPhoto extends StatelessWidget {
  final String? photo;

  const _CityPhoto({this.photo});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        AppNetworkImage(
          photo ?? "",
          fit: BoxFit.cover,
          placeholder: ColoredBox(color: context.appColors.fill.quaternary),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: SizedBox(
            height: 84,
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    context.appColors.service.scrim.withValues(alpha: 0),
                    context.appColors.service.scrim.withValues(alpha: 0.5),
                  ],
                ),
              ),
              child: const SizedBox(width: double.infinity),
            ),
          ),
        ),
      ],
    );
  }
}

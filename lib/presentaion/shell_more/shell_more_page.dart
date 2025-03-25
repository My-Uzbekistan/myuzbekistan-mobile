import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart' show BlocBuilder, BlocProvider;
import 'package:uzbekistan_travel/core/constants.dart';
import 'package:uzbekistan_travel/core/extensions/context_extension.dart';
import 'package:uzbekistan_travel/core/navigation/navigation_extensions.dart';
import 'package:uzbekistan_travel/di/injection.dart';
import 'package:uzbekistan_travel/presentaion/profile_page/bloc/profile_bloc.dart';
import 'package:uzbekistan_travel/presentaion/shell_more/bloc/more_bloc.dart';
import 'package:uzbekistan_travel/presentaion/shell_more/widgets/about_widget.dart';
import 'package:uzbekistan_travel/presentaion/shell_more/widgets/extensions.dart';
import 'package:uzbekistan_travel/presentaion/shell_more/widgets/more_currency_item.dart';
import 'package:uzbekistan_travel/presentaion/shell_more/widgets/use_trips.dart'
    show UseTripsWidget;

class ShellMorePage extends StatefulWidget {
  const ShellMorePage({super.key});

  @override
  State<ShellMorePage> createState() => _ShellMorePageState();
}

class _ShellMorePageState extends State<ShellMorePage> {
  late final MoreBloc moreBloc;

  @override
  void initState() {
    // TODO: implement initState
    moreBloc = getIt<MoreBloc>()..add(MoreEvent.init());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => moreBloc,
      child: Scaffold(
        appBar: AppBar(
          surfaceTintColor: Colors.transparent,
          systemOverlayStyle: Theme.of(context).appBarTheme.systemOverlayStyle,
          centerTitle: false,
          title: BlocBuilder<ProfileBloc, ProfileBlocState>(
              builder: (context, state) {
            return GestureDetector(
              onTap: () {
                context.pushProfilePage();
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                spacing: 16,
                children: [
                  Container(
                    height: 40,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: CachedNetworkImage(
                          imageUrl: (state is ProfileBlocDataState)
                              ? state.userModel?.photoUrl ?? ""
                              : "",
                          errorListener: (a) {},
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) {
                            return Assets.pngAvatar.toImage(fit: BoxFit.cover);
                          },
                        )),
                  ),
                  Flexible(
                      child: Text(
                    (state is ProfileBlocDataState)
                        ? state.userModel?.name ?? ""
                        : context.localizations!.guest,
                    style: CustomTypography.H3,
                  ))
                ],
              ),
            );
          }),
        ),
        body: BlocBuilder<MoreBloc, MoreState>(builder: (context, state) {
          return state.when(loading: () {
            return Center(child: CircularProgressIndicator());
          }, dataState: (abouts, useFull, currencies) {

            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  alignment: Alignment.topCenter,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: maxScreenWidth),
                    child: Column(
                      spacing: 20,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        MoreCurrencyItem(
                          currencies: currencies,
                          onTap: (){
                            context.pushCurrencies(currencies.filterCurrencies());
                          },
                        ),
                        AboutWidget(
                          avatars: abouts,
                        ),
                        if (useFull.isNotEmpty)
                          UseTripsWidget(
                            useFull: useFull,
                          )
                      ],
                    ),
                  ),
                ),
              ),
            );
          });
        }),
      ),
    );
  }
}

import 'package:component_res/component_res.dart';
import 'package:flutter/material.dart';
import 'package:shared/shared.dart';

import 'widget/home_hero_header.dart';
import 'widget/cities_widget.dart';
import 'widget/currency_calculator.dart';
import 'widget/events_widget.dart';
import 'widget/hotels_widget.dart';
import 'widget/services_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quickActions = <HomeQuickAction>[
      HomeQuickAction(iconPath: Assets.catalog.hotels.path, label: "Отели"),
      HomeQuickAction(iconPath: Assets.catalog.airplane.path, label: "Авиабилеты"),
      HomeQuickAction(iconPath: Assets.catalog.metro.path, label: "ЖД билеты"),
      HomeQuickAction(iconPath: Assets.catalog.events.path, label: "Билеты"),
    ];
    final List<String> banners = [
      'https://picsum.photos/800/400?random=1',
      'https://picsum.photos/800/400?random=2',
      'https://picsum.photos/800/400?random=3',
    ];
    return Scaffold(
      backgroundColor: context.appColors.background.underlayer,
      body: CustomScrollView(
        physics: const BouncingScrollPhysics(
          parent: AlwaysScrollableScrollPhysics(),
        ),
        slivers: [
          HomeHeader(
            regionName: "Ташкент",
            temperature: "32,4° C",
            airQuality: "38",
            prayerLabel: "Maghrib",
            prayerTime: DateTime.now()
                .add(const Duration(hours: 2, minutes: 5, seconds: 7)),
            hintText: "Кудахотите поехать?",
            quickActions: quickActions,
          ),


          SliverPadding(
            padding: const EdgeInsets.only(top: 12),
            sliver: SliverToBoxAdapter(child: CustomInfiniteCarousel(
              imageUrls: banners,
              onItemTap: (index) {
                logger.i('Bosilgan rasm indeksi: $index');
              },
            ),),
          ),
          ServicesWidget(),
          CurrencyCalculator(),
          CitiesWidget(
            cities: const [
              CityData(
                imageUrl: 'https://picsum.photos/440/560?random=11',
                title: "Хива",
                date: "1 — 2 август",
              ),
              CityData(
                imageUrl: 'https://picsum.photos/440/560?random=12',
                title: "Самарканд",
                date: "1 — 2 август",
              ),
              CityData(
                imageUrl: 'https://picsum.photos/440/560?random=13',
                title: "Бухара",
                date: "1 — 2 август",
              ),
            ],
          ),
          HotelsWidget(
            hotels: const [
              HotelData(
                imageUrl: 'https://picsum.photos/312/312?random=21',
                name: "Samarkand Regency",
                location: "Самарканд",
                distance: "300 км",
                rating: "4,9",
                price: "4 000 000",
              ),
              HotelData(
                imageUrl: 'https://picsum.photos/312/312?random=22',
                name: "Hyatt Regency",
                location: "Ташкент",
                distance: "10 км",
                rating: "4,9",
                price: "2 550 000",
              ),
              HotelData(
                imageUrl: 'https://picsum.photos/312/312?random=23',
                name: "Praga Hotel",
                location: "Ташкент",
                distance: "16 км",
                rating: "4,9",
                price: "320 000",
              ),
            ],
          ),
          EventsWidget(
            events: const [
              EventData(
                imageUrl: 'https://picsum.photos/640/560?random=31',
                title: "G‘aybulla Tursunov",
                location: "Ташкент",
                badgeText: "20 Ноябрь • Концерт",
              ),
              EventData(
                imageUrl: 'https://picsum.photos/640/560?random=32',
                title: "Lola Yuldasheva",
                location: "Самарканд",
                badgeText: "25 Ноябрь • Концерт",
              ),
              EventData(
                imageUrl: 'https://picsum.photos/640/560?random=33',
                title: "Ozodbek Nazarbekov",
                location: "Бухара",
                badgeText: "1 Декабрь • Концерт",
              ),
            ],
          ),

          SliverToBoxAdapter(
            child: SizedBox(height: MediaQuery.paddingOf(context).bottom),
          ),
        ],
      ),
    );
  }
}

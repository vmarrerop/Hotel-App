import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hotel_app/utils/app_styles.dart';
import 'package:hotel_app/widgets/barra.dart';
import 'package:hotel_app/widgets/collage.dart';
import 'package:hotel_app/widgets/doble_text.dart';
import 'package:hotel_app/widgets/icon_text_widget.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        children: [
          const Gap(40),
          Text(
            'What are \n you looking for?',
            style: Styles.headlineStyle1.copyWith(fontSize: 35),
          ),
          const Gap(20),
          const Barra(one: 'Airline Tickets', two: 'Hotels'),
          const Gap(25),
          const AppIconText(
            icon: Icons.flight_takeoff_rounded,
            text: 'Departure',
          ),
          const Gap(15),
          const AppIconText(
            icon: Icons.flight_land_rounded,
            text: 'Arrival',
          ),
          const Gap(20),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 18),
            decoration: BoxDecoration(
                color: Colors.blue.shade800,
                borderRadius: BorderRadius.circular(10)),
            child: Center(
              child: Text(
                'Find tickets',
                style: Styles.textStyle
                    .copyWith(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          const Gap(40),
          const DoubleText(
            main: 'Upcoming Flights',
            sub: 'View all',
          ),
          const Gap(15),
          const Collage()
        ],
      ),
    );
  }
}

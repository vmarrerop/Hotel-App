import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hotel_app/screens/hotel_screen.dart';
import 'package:hotel_app/screens/ticket_view.dart';
import 'package:hotel_app/utils/app_info_list.dart';
import 'package:hotel_app/utils/app_styles.dart';

import '../widgets/doble_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: ListView(children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(children: [
            const Gap(40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Good Morning',
                      style: Styles.headlineStyle3,
                    ),
                    const Gap(5),
                    Text(
                      'Book Tickets',
                      style: Styles.headlineStyle1,
                    ),
                  ],
                ),
                Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: const DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage("assets/images/img_1.png"))),
                )
              ],
            ),
            const Gap(15),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFFF4F6FD),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
              child: Row(
                children: const [
                  Icon(FluentSystemIcons.ic_fluent_search_regular,
                      color: Color(0xFFBFC205)),
                  Text('Search')
                ],
              ),
            ),
            const Gap(40),
            const DoubleText(
              main: 'Upcoming Flights',
              sub: 'View all',
            ),
          ]),
        ),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
            children: ticketList
                .map((singleTicket) => TicketView(
                      ticket: singleTicket,
                    ))
                .toList(),
          ),
        ),
        const Gap(40),
        Container(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: const DoubleText(main: 'Hotels', sub: 'View All')),
        const Gap(15),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.only(left: 20),
          child: Row(
              children: hotelList
                  .map((singleHotel) => HotelScreen(hotel: singleHotel))
                  .toList()),
        ),
        const Gap(40)
      ]),
    );
  }
}

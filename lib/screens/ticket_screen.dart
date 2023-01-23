import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hotel_app/screens/ticket_view.dart';
import 'package:hotel_app/utils/app_info_list.dart';
import 'package:hotel_app/widgets/barra.dart';
import 'package:hotel_app/widgets/column_layout.dart';
import 'package:hotel_app/widgets/layout_builder.dart';
import 'package:hotel_app/utils/app_styles.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      body: Stack(children: [
        ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          children: [
            const Gap(40),
            Text(
              'Tickets',
              style: Styles.headlineStyle1,
            ),
            const Gap(20),
            const Barra(one: 'Upcoming', two: 'Previous'),
            const Gap(40),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: TicketView(
                ticket: ticketList[0],
                isColor: true,
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              margin: const EdgeInsets.symmetric(
                horizontal: 15.8,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: 'Vicente',
                        secondText: 'Passenger',
                        aligment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                        firstText: '7928 9239',
                        secondText: 'Passport',
                        aligment: CrossAxisAlignment.end,
                        isColor: true,
                      )
                    ],
                  ),
                  const Gap(15),
                  const BuilderWidget(sections: 16),
                  const Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      AppColumnLayout(
                        firstText: '2348 492 92502',
                        secondText: 'Number of E-Ticket',
                        aligment: CrossAxisAlignment.start,
                        isColor: true,
                      ),
                      AppColumnLayout(
                        firstText: 'B3NK8',
                        secondText: 'Booking Code',
                        aligment: CrossAxisAlignment.end,
                        isColor: true,
                      ),
                    ],
                  ),
                  const Gap(15),
                  const BuilderWidget(sections: 16),
                  const Gap(15),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/visa.png',
                                scale: 11,
                              ),
                              Text(
                                '*** 2474',
                                style: Styles.headlineStyle3,
                              )
                            ],
                          ),
                          const Gap(5),
                          Text(
                            'Payment method',
                            style: Styles.headlineStyle4,
                          )
                        ],
                      ),
                      Column(
                        children: const [
                          AppColumnLayout(
                            firstText: '\$249.99',
                            secondText: 'Price',
                            aligment: CrossAxisAlignment.end,
                            isColor: true,
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(21),
                      bottomRight: Radius.circular(21))),
              margin: const EdgeInsets.only(left: 15, right: 15, top: 2),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: BarcodeWidget(
                    barcode: Barcode.code128(),
                    data: 'https://github.com/matinovovo',
                    drawText: false,
                    color: Styles.textColor,
                    height: 70,
                  ),
                ),
              ),
            ),
            const Gap(30),
            Container(
              padding: const EdgeInsets.only(left: 15),
              child: TicketView(
                ticket: ticketList[0],
              ),
            ),
          ],
        ),
        Positioned(
          left: 22,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
        Positioned(
          right: 22,
          top: 295,
          child: Container(
            padding: EdgeInsets.all(3),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Styles.textColor, width: 2)),
            child: CircleAvatar(
              maxRadius: 4,
              backgroundColor: Styles.textColor,
            ),
          ),
        ),
      ]),
    );
  }
}

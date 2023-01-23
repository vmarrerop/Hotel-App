import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hotel_app/utils/app_styles.dart';

class Collage extends StatelessWidget {
  const Collage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          height: 400,
          width: 180,
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Column(
            children: [
              Container(
                height: 180,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    image: const DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('assets/images/sit.jpg'))),
              ),
              const Gap(12),
              Text(
                "20% discount on the early booking of this flight. Don't miss.",
                style: Styles.headlineStyle2,
              )
            ],
          ),
        ),
        Column(
          children: [
            Stack(
              children: [
                Container(
                  width: 180,
                  height: 180,
                  decoration: BoxDecoration(
                      color: Colors.cyan.shade600,
                      borderRadius: BorderRadius.circular(18)),
                  padding:
                      const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Discount \nfor survey',
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      const Gap(10),
                      Text(
                          'Take the survey about our services and get a discount',
                          style: Styles.headlineStyle2.copyWith(
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              fontSize: 18)),
                    ],
                  ),
                ),
                Positioned(
                    right: -45,
                    top: -40,
                    child: Container(
                      padding: const EdgeInsets.all(30),
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                              width: 18, color: Colors.cyan.shade800),
                          color: Colors.transparent),
                    ))
              ],
            ),
            const Gap(27),
            Container(
              width: 180,
              height: 190,
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(18),
                  color: Colors.green.shade400),
              child: Column(
                children: [
                  Text(
                    'Take Love',
                    style: Styles.headlineStyle2.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(10),
                  RichText(
                      text: const TextSpan(children: [
                    TextSpan(text: '👨‍💻', style: TextStyle(fontSize: 28)),
                    TextSpan(text: '👨‍💻', style: TextStyle(fontSize: 50)),
                    TextSpan(text: '👨‍💻', style: TextStyle(fontSize: 28))
                  ]))
                ],
              ),
            )
          ],
        )
      ],
    );
  }
}

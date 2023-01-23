import 'package:flutter/material.dart';

class Barra extends StatelessWidget {
  final String one;
  final String two;
  const Barra({super.key, required this.one, required this.two});

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Container(
        padding: const EdgeInsets.all(4),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey.shade300),
        child: Row(
          children: [
            //AIRLINE TICKETS SECTION
            Container(
              width: 185,
              padding: const EdgeInsets.symmetric(vertical: 7),
              decoration: const BoxDecoration(
                  borderRadius:
                      BorderRadius.horizontal(left: Radius.circular(50)),
                  color: Colors.white),
              child: Center(child: Text(one)),
            ),
            //HOTELS SECTION
            Container(
              width: 178,
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Center(child: Text(two)),
            )
          ],
        ),
      ),
    );
  }
}

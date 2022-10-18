import 'package:flutter/material.dart';

import '../theme.dart';

class Discards extends StatelessWidget {
  const Discards({
    Key? key,
    required this.img,
    required this.grm,
    required this.prc,
    required this.redprc,
  }) : super(key: key);
  final String img;
  final String grm;
  final String prc;
  final String redprc;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 0,
      child: Container(
        height: 250,
        width: 170,
        decoration: BoxDecoration(
          color: Colors.black12,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
              ),
              child: Image.asset(
                img,
                height: 150,
                width: 170,
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 8),
              child: Row(
                children: [
                  Text(
                    grm,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.w500,
                      color: KPrimaryColor.withOpacity(0.5),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    prc,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: KPrimaryColor.withOpacity(0.7),
                      decoration: TextDecoration.lineThrough,
                      decorationThickness: 2,
                      decorationColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                redprc,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: KPrimaryColor,
                ),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.only(left: 8, top: 3),
              child: Container(
                alignment: Alignment.center,
                height: 30,
                width: 100,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  'Order Now',
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w800,
                    color: KWhiteColor,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

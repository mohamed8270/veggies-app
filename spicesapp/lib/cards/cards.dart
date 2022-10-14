import 'package:flutter/material.dart';

import '../theme.dart';

class Cards extends StatelessWidget {
  const Cards({
    Key? key,
    required this.image,
    required this.title,
    required this.price,
    required this.grm,
    required this.rprc,
  }) : super(key: key);
  final String image;
  final String title;
  final String price;
  final String grm;
  final String rprc;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 160,
          width: 120,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: KPrimaryColor,
            image: DecorationImage(
              image: AssetImage(image),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(
          title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: KPrimaryColor,
          ),
        ),
        SizedBox(height: 5),
        Row(
          children: [
            Text(
              grm,
              style: TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
            SizedBox(width: 30),
            Text(
              price,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: KPrimaryColor,
                decoration: TextDecoration.lineThrough,
                decorationThickness: 2,
                decorationColor: Colors.red,
              ),
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          children: [
            Text(
              rprc,
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w800,
                color: KPrimaryColor,
              ),
            ),
            SizedBox(width: 50),
            Container(
              alignment: Alignment.center,
              height: 30,
              width: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.red,
              ),
              child: Text(
                'Add',
                style: TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w800,
                  color: KWhiteColor,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:block_management/ui/components/bank_screen_components/pro_card.dart';
import 'package:flutter/material.dart';

class PromoCard extends StatefulWidget {
  const PromoCard({super.key});

  @override
  State<PromoCard> createState() => _PromoCardState();
}

class _PromoCardState extends State<PromoCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 200,
                      height: 100,
                      child: Image(
                          image: AssetImage("assets/images/offer.jpg"),
                          fit: BoxFit.fill),
                    ),
                  ]),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              width: 200,
              height: 100,
              color: Colors.purple,
              child: Image(
                  image: AssetImage("assets/images/offer2.jpg"),
                  fit: BoxFit.fill),
            ),
          ],
        ),
      ),
    );
  }
}

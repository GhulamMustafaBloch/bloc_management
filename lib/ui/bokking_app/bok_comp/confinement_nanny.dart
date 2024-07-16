// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:block_management/data/confinement/confinement_data.dart';
import 'package:flutter/material.dart';

class ConfinementNanny extends StatefulWidget {
  const ConfinementNanny({super.key});

  @override
  State<ConfinementNanny> createState() => _ConfinementNannyState();
}

class _ConfinementNannyState extends State<ConfinementNanny> {
  final data = ConfinementData;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            alignment: Alignment.topLeft,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Confinement Nanny',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Icon(
                      Icons.arrow_right_alt_rounded,
                      color: Colors.black,
                    ))
              ],
            ),
          ),
          SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: data.map((item) {
                return Container(
                  margin: EdgeInsets.only(right: 10),
                  alignment: Alignment.bottomCenter,
                  width: size.width * 0.33,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 130,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage(item["img"]))
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '${item['name']}',
                      ),
                      SizedBox(height: 4),
                      item["is_stars"] == true ? Text(item["stars"]) : Container(),
                      Text(
                        '${item['amount']}',
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          )
          // Container(
          //   alignment: Alignment.bottomCenter,
          //   width: size.width*0.38,
          //   color: Colors.amber,
          //   child: Column(
          //     crossAxisAlignment: CrossAxisAlignment.start,
          //     children: [
          //       Text(
          //         'Confinement Argels \$100 Voucher',
          //       ),
          //     ]
          //   ),
          // ),
        ],
      ),
    );
  }
}

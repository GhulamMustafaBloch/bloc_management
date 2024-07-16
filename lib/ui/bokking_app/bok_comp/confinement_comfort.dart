// ignore_for_file: prefer_const_constructors

import 'package:block_management/data/confinement/confinement_data.dart';
import 'package:flutter/material.dart';

class ConfinementComfort extends StatefulWidget {
  const ConfinementComfort({super.key});

  @override
  State<ConfinementComfort> createState() => _ConfinementComfortState();
}

class _ConfinementComfortState extends State<ConfinementComfort> {
  final data = ConfinementComfortData;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: Column(
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
                  width: size.width * 0.5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.purple,
                          borderRadius: BorderRadius.circular(15),
                          image: DecorationImage(image: AssetImage(item["img"]),fit: BoxFit.cover)
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        '${item['first_name']}',
                      ),
                      SizedBox(height: 4),
                      Text(
                        '${item['last_name']}',
                      ),
                      SizedBox(height: 4),
                      Text(
                        '${item['amount']}',
                      ),
                    ],
                  ),
                );
              }).toList(),
            ),
          )
        ],
      ),
    );
  }
}

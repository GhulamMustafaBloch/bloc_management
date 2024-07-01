// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UserCard extends StatefulWidget {
  const UserCard({super.key});

  @override
  State<UserCard> createState() => _UserCardState();
}

class _UserCardState extends State<UserCard> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Container(
        padding: EdgeInsets.fromLTRB(10, 0, 10, 40),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
              offset: Offset(0, 3),
            ),
          ],
        ),
        child: Container(
          child: Row(
              children: [
                Container(
                  child: Stack(
                    children: [
                      Icon(
                        Icons.person_outline,
                        size: 40,
                        color: Colors.grey,
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Icon(
                          Icons.arrow_back,
                          size: 25,
                          color: Colors.blue,
                      ))
                    ],
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 70,
                  child: Stack(children: [
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: Colors.white70, // Border color
                          width: 2.0, // Border width
                        ),
                      ),
                      child: CircleAvatar(
                        backgroundColor: Colors.grey,
                        child:
                            Text('AH', style: TextStyle(color: Colors.white)),
                      ),
                    ),
                    Positioned(
                      left: 28,
                      bottom: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white, // Border color
                            width: 2.0, // Border width
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 18,
                          child: Text(
                            '+4',
                            style: TextStyle(color: Colors.white, fontSize: 16),
                          ),
                        ),
                      ),
                    ),
                  ]),
                ),
                SizedBox(width: 10),
                Row(
                  children: [
                    Container(
                      width: 105,
                      child: Text(
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        'Amjad Hussain',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 6,
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 25),
                      child: Row(
                        children: [
                          Text(
                            '+ 4 more',
                            style: TextStyle(
                              color: Colors.blue,
                              fontSize: 16,
                              decoration: TextDecoration.underline,
                              decorationColor: Colors.blue,
                              decorationThickness: 2.5,
                            ),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text(
                            '+ 69.00',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      alignment: Alignment.topRight,
                      child: Text("Remaining +13.80"),
                    )
                  ],
                ),
              ]),
        ),
      ),
    );
  }
}

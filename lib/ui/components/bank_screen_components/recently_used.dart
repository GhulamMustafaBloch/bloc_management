// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'dart:math';

import 'package:flutter/material.dart';

class RecentlyUsed extends StatefulWidget {
  const RecentlyUsed({super.key});

  @override
  State<RecentlyUsed> createState() => _RecentlyUsedState();
}

class _RecentlyUsedState extends State<RecentlyUsed> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      child: Column(
        children: [
          Container(
              alignment: Alignment.topLeft,
              child: Text(
                "Recently Used",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              )),
          SizedBox(
            height: 5,
          ),
          Card(
            color: Colors.white,
            elevation: 5,
            child: Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade600,
                        ),
                        child: Icon(Icons.person_3),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 7),
                          child: Column(
                            children: [
                              Text('Pay'),
                              Text(' Friends'),
                            ],
                          )),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 35),
                  child: Column(
                    children: [
                      Container(
                        width: 50,
                        height: 50,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey.shade600,
                        ),
                        child: Icon(Icons.person_3),
                      ),
                      Container(
                          padding: EdgeInsets.only(top: 7),
                          child: Column(
                            children: [
                              Text('Money'),
                              Text(' Transfer'),
                            ],
                          )),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

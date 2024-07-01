// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class BottomAppbar extends StatefulWidget {
  const BottomAppbar({super.key});

  @override
  State<BottomAppbar> createState() => _BottomAppbarState();
}

class _BottomAppbarState extends State<BottomAppbar> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Positioned(
        bottom: 25,
        left: 50,
        right: 50,
        child: Container(
            width: 200,
            decoration: BoxDecoration(
                color: Colors.purple.shade900,
                borderRadius: BorderRadius.circular(50)),
            child: BottomNavigationBar(
                backgroundColor: Colors.transparent,
                elevation: 50,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.white60,
                selectedFontSize: 18,
                unselectedFontSize: 18,
                items: [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.language_outlined), label: 'Transfer'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.local_offer_outlined), label: 'Offers'),
                ])));
  }
}

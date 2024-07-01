// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class FlottingActionBtn extends StatefulWidget {
  const FlottingActionBtn({super.key});

  @override
  State<FlottingActionBtn> createState() => _FlottingActionBtnState();
}

class _FlottingActionBtnState extends State<FlottingActionBtn> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Positioned(
        bottom: 40,
        left: size.width * 0.42,
        child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.white,
                width: 2,
              ),
              shape: BoxShape.circle,
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.purple.shade900],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text("tap to".toUpperCase()),
              RichText(
                text: TextSpan(
                  text: 'pay',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                  children: const <TextSpan>[
                    TextSpan(text: 'it', style: TextStyle(color: Colors.blue)),
                  ],
                ),
              ),
            ]),
          ),
        ));
  }
}

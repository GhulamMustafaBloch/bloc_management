// ignore_for_file: prefer_const_constructors

import 'package:block_management/ui/screens/today_money_app/money_home_screen.dart';
import 'package:flutter/material.dart';

class BottomSheetScreen extends StatefulWidget {
  const BottomSheetScreen({super.key});

  @override
  State<BottomSheetScreen> createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Sheet'),
      ),
      bottomNavigationBar: Container(
        height: 23,
        color: Colors.yellow, // This is just to make the Container visible
        child: Stack(
          children: [
            Positioned(
              bottom: -10, // Position from the top
              left: size.width * 0.45, // Position from the left
              child: Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Builder(
                  builder: (BuildContext context) {
                    return IconButton(
                      onPressed: () {
                        showBottomSheet(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(0),
                          ),
                          elevation: 20,
                          context: context,
                          builder: (BuildContext context) {
                            return Container(
                                height: size.height,
                                width: size.width,
                                child: Column(children: [
                                  Stack(
                                    children: [
                                      Positioned(
                                        child: Container(
                                          height: 50,
                                          width: 50,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.green,
                                          ),
                                          child: IconButton(
                                            onPressed: () {
                                              Navigator.of(context).pop();
                                            },
                                            icon: Icon(Icons.close),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                
                                Expanded(child: MoneyHomeScreen())
                                ]));
                          },
                        );
                      },
                      icon: Icon(
                        Icons.more_sharp,
                        size: 30,
                        color: Colors.white,
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

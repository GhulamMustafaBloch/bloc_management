// ignore_for_file: prefer_const_constructors

import 'package:block_management/ui/bokking_app/bok_comp/booking_dates.dart';
import 'package:block_management/ui/bokking_app/bok_comp/recommended_for_you.dart';
import 'package:flutter/material.dart';

class NextScreen extends StatelessWidget {
  const NextScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: size.height * 0.46,
            child: Stack(
              children: [
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                      padding: EdgeInsets.only(right: 20, left: 10),
                      height: 140,
                      decoration: BoxDecoration(
                        color: Color(0xff849cff),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                      child: AppBar(
                        centerTitle: true,
                        leading: IconButton(
                          icon: Icon(Icons.arrow_back_ios_new,
                              color: Colors.white), // Custom back icon
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                        title: Text("Confinement Nanny",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontWeight: FontWeight.w400,
                                letterSpacing: 1)),
                        actions: <Widget>[
                          Icon(
                            Icons.favorite,
                            color: Colors.white,
                          )
                        ],
                      )),
                ),
                Positioned(
                    top: 110, left: 10, right: 10, child: BookingDates()),
              ],
            ),
          ),
          Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.topLeft,
              child: Text("Recommended for you",
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                      letterSpacing: 1))),
          RecommendedForYou()
        ],
      ),
    );
  }
}

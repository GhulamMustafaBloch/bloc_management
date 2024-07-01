// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CurrencyConversion extends StatefulWidget {
  const CurrencyConversion({super.key});

  @override
  State<CurrencyConversion> createState() => _CurrencyConversionState();
}

class _CurrencyConversionState extends State<CurrencyConversion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0),
      child: Column(children: [
        Container(
          alignment: Alignment.topLeft,
          child: Text(
            "Today's Best Rate",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 10),
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 1,
                blurRadius: 7,
                offset: Offset(0, 3),
              ),
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.network(
                    'https://via.placeholder.com/50', // Replace with actual image URL if available
                    width: 50,
                    height: 50,
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 35),
                      child: Text(
                        'Express Bank Transfer by Federal Bank',
                        style: TextStyle(
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 30),
                    child: Image.asset(
                      'assets/images/arrow_down2-removebg.png', // Replace with actual image URL if available
                      width: 30,
                      height: 30,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'AED',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.grey[700],
                            ),
                          ),
                          SizedBox(
                            width: 3,
                          ),
                          Image.asset(
                            'assets/images/flag_aed-removebg.png', // Replace with actual image URL if available
                            width: 20,
                            height: 20,
                          ),
                        ],
                      ),
                      Text(
                        ' 1.00',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                      child: Row(
                    children: [
                      Text(
                        ' = ',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.grey[700],
                        ),
                      ),
                      Column(
                        children: [
                          Row(
                            children: [
                              Text(
                                'AED',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  color: Colors.grey[700],
                                ),
                              ),
                              SizedBox(
                                width: 3,
                              ),
                              Image.asset(
                                'assets/images/flag_inr.png', // Replace with actual image URL if available
                                width: 20,
                                height: 20,
                              ),
                            ],
                          ),
                          Text(
                            ' 22.534',
                            style: TextStyle(
                              fontSize: 16.0,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    child: ElevatedButton(
                      onPressed: () {
                        // Add your onPressed code here!
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.purple,
                        padding:
                            EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      ),
                      child: Text(
                        'Send',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          alignment: Alignment.topRight,
          child: Text(
            '*rates vary based on service provider',
            style: TextStyle(
              fontSize: 12.0,
              color: Colors.grey[600],
            ),
          ),
        ),
      ]),
    );
  }
}

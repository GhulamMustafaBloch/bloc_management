// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:block_management/ui/components/bank_screen_components/notifacitation_and_question.dart';
import 'package:block_management/ui/components/bank_screen_components/user_profile.dart';
import 'package:flutter/material.dart';

class TopCom extends StatefulWidget {
  const TopCom({super.key});

  @override
  State<TopCom> createState() => _TopComState();
}

class _TopComState extends State<TopCom> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.38,
      width: size.width,
      padding: EdgeInsets.symmetric(horizontal: 15),
      decoration: const BoxDecoration(
        color: Color(0xFF4F1C93),
      ),
      child: Container(
        padding: EdgeInsets.only(top: 5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserProfile(),
                NotifacitationAndQuestion(),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'AVAILABLE BALANCE AED',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            '*****',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(width: 20),
                          Icon(
                            Icons.visibility,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/pay.png",
                                              height: 40,
                                              width: 40,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Add Money",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/pay.png",
                                              height: 40,
                                              width: 40,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Request",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/pay.png",
                                              height: 40,
                                              width: 40,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Send Money",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/pay.png",
                                              height: 40,
                                              width: 40,
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "Add Money",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/pay.png",
                                              height: 40,
                                              width: 40,
                                            ),
                                            SizedBox(
                                              height: 10,
                                            ),
                                            Text(
                                              "Request",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          children: [
                                            Image.asset(
                                              "assets/images/pay.png",
                                              height: 40,
                                              width: 40,
                                            ),
                                            SizedBox(
                                              height: 15,
                                            ),
                                            Text(
                                              "Send Money",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  color: Colors.white,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 15,
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
                Column(
                  children: [
                    Container(
                      
                      width: 90,
                      decoration: BoxDecoration(
                          // color: Color(0xFF6E2CA3),
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Colors.transparent,
                              Colors.deepPurple,
                            ],
                          ),
                          borderRadius: BorderRadius.circular(10),
                          border: Border.fromBorderSide(
                            BorderSide(color: Colors.deepPurple, width: 2),
                          )),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: Text(
                              "letsgo",
                              style:
                                  TextStyle(fontSize: 16, color: Colors.white),
                            ),
                          ),
                          RichText(
                            text: TextSpan(
                              text: 'pay',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                              ),
                              children: const <TextSpan>[
                                TextSpan(
                                    text: 'it',
                                    style:
                                        TextStyle(color: Colors.blue)),
                              ],
                            ),
                          ),
                          SizedBox(height: 10,),
                          Container(
                            color: Color(0xFF4F1C93),
                            child: Image(
                              height: 30,
                              image: AssetImage('assets/images/Scanner-removebg.png'),
                              ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.symmetric(horizontal: 28),
                            child: Image(
                              height: 15,
                              image: AssetImage('assets/images/wifi2-removebg.png'),
                              ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.topLeft,
                            padding: EdgeInsets.symmetric(horizontal: 28),
                            child: Image(
                              height: 15,
                              image: AssetImage('assets/images/Sim.png'),
                              ),
                          ),
                          SizedBox(height: 5,),
                          Container(
                            alignment: Alignment.bottomRight,
                            padding: EdgeInsets.only(right: 8),
                            child: Text("visa" .toUpperCase(), style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16
                            ),),
                          ),
                              
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: ElevatedButton(
                        onPressed: () {},
                        child: Text(
                          "View Card",
                          style: TextStyle(fontSize: 15, color: Colors.white),
                        ),
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(horizontal: 10),
                            backgroundColor: Colors.blueAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            )),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class Scanner extends StatefulWidget {
  const Scanner({super.key});

  @override
  State<Scanner> createState() => _ScannerState();
}

class _ScannerState extends State<Scanner> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 50,
      color: Colors.amber,
      child: Center(child: Text("data data data da")),
    );
  }
}

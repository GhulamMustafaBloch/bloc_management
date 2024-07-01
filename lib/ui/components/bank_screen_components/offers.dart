// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class Offers extends StatefulWidget {
  const Offers({super.key});

  @override
  State<Offers> createState() => _OffersState();
}

class _OffersState extends State<Offers> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Offers from Brands we love",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "view all",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blue,
                    decoration: TextDecoration.underline,
                    decorationColor: Colors.blue,
                  ),
                ))
          ]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: size.width * 0.19,
                    height: 80,
                    child: Card(
                      elevation: 5,
                      child: Image(image: AssetImage("assets/images/now.png")),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: size.width * 0.19,
                    height: 80,
                    child: Card(
                      elevation: 5,
                      child: Image(
                        image: AssetImage("assets/images/noon_img.jpeg"),
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: size.width * 0.19,
                    height: 80,
                    child: Card(
                      elevation: 5,
                      child:
                          Image(image: AssetImage("assets/images/namshi.png")),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: size.width * 0.19,
                    height: 80,
                    child: Card(
                      elevation: 5,
                      child:
                          Image(image: AssetImage("assets/images/sivvi.jpeg")),
                    ),
                  ),
                  SizedBox(
                    width: 7,
                  ),
                  Container(
                    width: size.width * 0.19,
                    height: 80,
                    child: Card(
                      elevation: 5,
                      child:
                          Image(image: AssetImage("assets/images/sivvi.jpeg")),
                    ),
                  ),
                ]),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            child: Row(
              children: [
                Stack(
                  children: [
                    Card(
                      child: Container(
                        width: size.width * 0.40,
                        child: Column(children: [
                          Container(
                            height: 70,
                            width: size.width,
                            child: Image(
                              image: AssetImage("assets/images/shopping.jpeg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade900,
                            ),
                            child: Text("50% Cashback", style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7, top: 7),
                            alignment: Alignment.topLeft,
                            child: Text("NowNow", style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w900
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7),
                            alignment: Alignment.topLeft,
                            child: Text("50% Cashback", style: TextStyle(
                              color: Colors.grey.shade700,
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7, bottom: 50),
                            alignment: Alignment.topLeft,
                            child: Text("50% Cashback", style: TextStyle(
                              color: Colors.grey.shade700,
                            ),),
                          ),
                        ]),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 50,
                        child: Icon(Icons.shop),
                        decoration: BoxDecoration(
                          color: Colors.orange.shade900,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    Card(
                      child: Container(
                        width: size.width * 0.40,
                        child: Column(children: [
                          Container(
                            height: 70,
                            width: size.width,
                            child: Image(
                              image: AssetImage("assets/images/shopping.jpeg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              color: Color.fromARGB(244, 51, 1, 1),
                            ),
                            child: Text("20% Cashback", style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7, top: 7),
                            alignment: Alignment.topLeft,
                            child: Text("NowNow", style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w900
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7),
                            alignment: Alignment.topLeft,
                            child: Text("50% Cashback", style: TextStyle(
                              color: Colors.grey.shade700,
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7, bottom: 50),
                            alignment: Alignment.topLeft,
                            child: Text("50% Cashback", style: TextStyle(
                              color: Colors.grey.shade700,
                            ),),
                          ),
                        ]),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 50,
                        child: Icon(Icons.shop),
                        decoration: BoxDecoration(
                          color: Color.fromARGB(244, 51, 1, 1),
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Stack(
                  children: [
                    Card(
                      child: Container(
                        width: size.width * 0.40,
                        child: Column(children: [
                          Container(
                            height: 70,
                            width: size.width,
                            child: Image(
                              image: AssetImage("assets/images/shopping.jpeg"),
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            padding: EdgeInsets.all(7),
                            alignment: Alignment.topLeft,
                            decoration: BoxDecoration(
                              color: Colors.orange.shade900,
                            ),
                            child: Text("50% Cashback", style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),)
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7, top: 7),
                            alignment: Alignment.topLeft,
                            child: Text("NowNow", style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w900
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7),
                            alignment: Alignment.topLeft,
                            child: Text("50% Cashback", style: TextStyle(
                              color: Colors.grey.shade700,
                            ),),
                          ),
                          Container(
                            padding: EdgeInsets.only(left: 7, bottom: 50),
                            alignment: Alignment.topLeft,
                            child: Text("50% Cashback", style: TextStyle(
                              color: Colors.grey.shade700,
                            ),),
                          ),
                        ]),
                      ),
                    ),
                    Positioned(
                      right: 0,
                      child: Container(
                        height: 40,
                        width: 50,
                        child: Icon(Icons.shop),
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                            topRight: Radius.circular(6),
                            bottomLeft: Radius.circular(6),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:block_management/data/confinement/confinement_data.dart';
import 'package:flutter/material.dart';

class RecommendedForYou extends StatefulWidget {
  const RecommendedForYou({super.key});

  @override
  State<RecommendedForYou> createState() => _RecommendedForYouState();
}

class _RecommendedForYouState extends State<RecommendedForYou> {
    final data = ConfinementData;
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(top: 0, left: 10, right: 10),
        child: GridView.builder(
          padding: EdgeInsets.only(top: 15),
          itemCount: data.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
            childAspectRatio: 0.73,
            ), 
          itemBuilder: (context, index) {
            return Card(
              elevation: 5,
              color: Color(0xfffcffff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 150,
                    width: size.width,
                    child: Image(image: AssetImage(data[index]["img"]),fit: BoxFit.cover,),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(data[index]["name"], style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                     SizedBox(height: 3,),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(data[index]["amount"], style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold))),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: data [index]["is_stars"] == true? Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Icon(Icons.star, size: 15,),
                        Text(data[index]["stars"]),
                      ],
                    ): Container()
                    ),
                ]
              ),
            );
          },),
      ),
    );
  }
}
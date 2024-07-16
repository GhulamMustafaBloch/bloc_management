// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:block_management/ui/bokking_app/bok_comp/grid_item.dart';
import 'package:block_management/ui/bokking_app/bok_comp/search_bar_com.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AppBarCum extends StatefulWidget {
  const AppBarCum({super.key});

  @override
  State<AppBarCum> createState() => _AppBarCumState();
}

class _AppBarCumState extends State<AppBarCum> {
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 170,
      child: Stack(children: [
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
               
                title: Text("tsukimon" .toUpperCase(), style: TextStyle(
              
                )),
              )
               ),
          ),
          
          Positioned(
            top: 110,
            left: 20,
            right: 20,
            child: SearchBarCom()
          ),
          
        ]),
    );
  }
}










// Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Container(
//                     child: Text("tsukimon" .toUpperCase(), style: TextStyle(
//                       fontWeight: FontWeight.bold,
//                       letterSpacing: 1,
//                       fontSize: 20,
//                     ),)
//                   ),
//                    Container(
//                     child: Row(
//                       children: [
//                         Icon(Icons.announcement_outlined, color: Colors.white, size: 30,),
//                         SizedBox(width: 10),
//                         Icon(Icons.favorite, color: Colors.white, size: 30,),
//                         SizedBox(width: 10),
//                         CircleAvatar(
//                           backgroundImage: AssetImage("assets/images/avtar.png"),
//                         )
//                       ]
//                     )
//                   )
//                 ]
//               ),
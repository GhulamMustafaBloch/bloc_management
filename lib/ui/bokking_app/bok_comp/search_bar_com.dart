// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

class SearchBarCom extends StatefulWidget {
  const SearchBarCom({super.key});

  @override
  State<SearchBarCom> createState() => _SearchBarComState();
}

class _SearchBarComState extends State<SearchBarCom> {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 20,
      child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Color(0xffffffff),
            borderRadius: BorderRadius.circular(15),
          ),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search),
              suffixIcon: Container(
                width: 60,
                decoration: BoxDecoration(
                  border: Border(
                    left: BorderSide(color: Colors.black, width: 1.0),
                  )
                ),
                //   child: Icon(Icons.search),
                child: Icon(Icons.crop_free, size: 40,)
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide: BorderSide
                    .none, // Remove the border to integrate well with the container's color
              ),
              filled: true, // To apply a background color
              fillColor: Color(0xffffffff), // Same as the container's color
              contentPadding:
                  EdgeInsets.symmetric(vertical: 10), // Adjust padding if needed
            ),
          )),
    );
  }
}

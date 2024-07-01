// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class UserProfile extends StatefulWidget {
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return 
              Container(
                child: Row(children: [
                  Container(
                    width: size.width * 0.23,
                    child: Stack(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 3,
                              ),
                              borderRadius: BorderRadius.circular(50)),
                          child: CircleAvatar(
                            radius: 30,
                            backgroundColor: Colors.grey,
                            child: Text(
                              "FL",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          right: 15,
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Color(0xFF4F1C93),
                              shape: BoxShape.circle,
                            ),
                            child: Icon(
                              Icons.settings,
                              color: Colors.white,
                              size: 22,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: Text("Rana Talib", style: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),),
                  )
                ]),
              );
  }
}

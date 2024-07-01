// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NotifacitationAndQuestion extends StatefulWidget {
  const NotifacitationAndQuestion({super.key});

  @override
  State<NotifacitationAndQuestion> createState() => _NotifacitationAndQuestionState();
}

class _NotifacitationAndQuestionState extends State<NotifacitationAndQuestion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child:  Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
                size: 33,
                ),
              onPressed: () {
                // Add your notification handling code here
              },
            ),
            IconButton(
              icon: Icon(
                Icons.help_outline, 
                color: Colors.white,
                size: 33,
                ),
              onPressed: () {
                // Add your question handling code here
              },
            ),
          ],
        ),
    );
  }
}
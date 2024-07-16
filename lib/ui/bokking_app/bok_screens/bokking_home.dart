// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:block_management/ui/bokking_app/bok_comp/app_bar_cum.dart';
import 'package:block_management/ui/bokking_app/bok_comp/confinement_comfort.dart';
import 'package:block_management/ui/bokking_app/bok_comp/confinement_nanny.dart';
import 'package:block_management/ui/bokking_app/bok_comp/grid_item.dart';
import 'package:flutter/material.dart';

class BokkingHome extends StatelessWidget {
  const BokkingHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppBarCum(), // Custom AppBar
           GridItem(),
          ConfinementNanny(),
          ConfinementComfort()
          ],
        ),
      ),
    );
  }
}

// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:block_management/ui/components/bank_screen_components/CurrencyConversion.dart';
import 'package:block_management/ui/components/bank_screen_components/bottom_appbar.dart';
import 'package:block_management/ui/components/bank_screen_components/flotting_action_btn.dart';
import 'package:block_management/ui/components/bank_screen_components/offers.dart';
import 'package:block_management/ui/components/bank_screen_components/promo_card.dart';
import 'package:block_management/ui/components/bank_screen_components/recently_used.dart';
import 'package:block_management/ui/components/bank_screen_components/top_com.dart';
import 'package:block_management/ui/components/bank_screen_components/user_card.dart';
import 'package:flutter/material.dart';

class BankScreen extends StatefulWidget {
  const BankScreen({super.key});

  @override
  State<BankScreen> createState() => _BankScreenState();
}

class _BankScreenState extends State<BankScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                ListView(
                  children: [
                    TopCom(),
                    CurrencyConversion(),
                    UserCard(),
                    PromoCard(),
                    RecentlyUsed(),
                    Offers()
                  ],
                ),
                BottomAppbar(),
                FlottingActionBtn()
              ],
            ),
          ),
        ],
      ),
    );
  }
}

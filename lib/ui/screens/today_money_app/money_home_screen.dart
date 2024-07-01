// ignore_for_file: prefer_const_constructors

import 'package:block_management/blocks/cards/cards_cubit.dart';
import 'package:block_management/data/maps/list.dart';
import 'package:block_management/ui/screens/today_money_app/cards.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MoneyHomeScreen extends StatefulWidget {
  const MoneyHomeScreen({super.key});

  @override
  State<MoneyHomeScreen> createState() => _MoneyHomeScreenState();
}

class _MoneyHomeScreenState extends State<MoneyHomeScreen> {
  ListOfMap listOfMap = ListOfMap();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.grey.shade400,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 20, 10, 0),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'What do you want to do today?'.toUpperCase(),
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: 8),
              TextField(
                onChanged: (value) {
                  //Do something with the user input.
                  context.read<CardsCubit>().filterCards(value, value);
                },
                decoration: InputDecoration(
                  hintText: "Search",
                  prefixIcon: Icon(
                    Icons.search,
                    size: 30,
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 0.6,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15,),
             Container(
              padding: EdgeInsets.only(bottom: 0),
              alignment: Alignment.topLeft,
              child: Text("Send & Receive", style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
             ),
              SizedBox(height: 15,),
              Container(
                alignment: Alignment.topLeft,
                height: 320,
                child: Cards()
                ),
            //   SizedBox(height: 15,),
            //  Container(
            //   padding: EdgeInsets.only(bottom: 0),
            //   alignment: Alignment.topLeft,
            //   child: Text("Reacharges & Bills", style: TextStyle(
            //     fontSize: 18,
            //     fontWeight: FontWeight.bold
            //   ),),
            //  ),
            //   SizedBox(height: 15,),
            //   Container(
            //     alignment: Alignment.topLeft,
            //     height: 320,
            //     child: Cards()
            //     ),
            ],
          ),
        ),
      ),
    
  
    );
  }
}

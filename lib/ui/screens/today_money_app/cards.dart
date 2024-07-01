// ignore_for_file: prefer_const_constructors

import 'package:block_management/blocks/cards/cards_cubit.dart';
import 'package:block_management/blocks/cards/cards_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardsCubit, CardsState>(
      builder: (context, state) {
        if (state is CardInitState) {
          return GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.cards.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 2 / 3.3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              var data = state.cards[index];
              return Column(children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(data["image"]),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(children: [
                    Text(
                      maxLines: 1,
                      data["title"],
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      data["description"],
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ]),
                ),
              ]);
            },
          );
        } else if (state is CardFilteredState) {
          return GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            itemCount: state.filterdCards.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              childAspectRatio: 2 / 3.3,
              crossAxisSpacing: 10,
              mainAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              var data = state.filterdCards[index];
              return Column(children: [
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Image.asset(data["image"]),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Column(children: [
                    Text(
                      maxLines: 1,
                      data["title"],
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                    Text(
                      overflow: TextOverflow.ellipsis,
                      data["description"],
                      style: TextStyle(
                        fontSize: 16,
                      ),
                    ),
                  ]),
                ),
              ]);
            },
          );
        }
        return Container();
      },
    );
  }
}

import 'package:block_management/blocks/counter2/counter2_bloc.dart';
import 'package:block_management/blocks/counter2/counter2_event.dart';
import 'package:block_management/blocks/counter2/counter2_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counter2 extends StatefulWidget {
  const Counter2({super.key});

  @override
  State<Counter2> createState() => _Counter2State();
}

class _Counter2State extends State<Counter2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.deepOrange.shade500,
        title: Text(
          "Counter Screen",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<Counter2Bloc, Counter2State>(
              builder: (context, state) {
                return Text(
                  state.counter.toString(),
                  style: TextStyle(
                      fontSize: 50, color: Colors.deepOrange.shade500),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<Counter2Bloc>().add(IncrementCounter());
                      },
                      child: Text(
                        "Increment",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange.shade500,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        context.read<Counter2Bloc>().add(DecrementCounter());
                      },
                      child: Text(
                        "decrement",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepOrange.shade500,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10))),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
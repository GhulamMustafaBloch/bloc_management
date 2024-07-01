import 'package:block_management/blocks/internet/internet_bloc.dart';
import 'package:block_management/blocks/internet/internet_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Internet extends StatelessWidget {
  const Internet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Center(
            child: BlocBuilder<InternetBloc, InternetState>(
              builder: (context, state) {
                if(state is InternetGainedState){
                  return Text('Internet is connected');
                } else{
                  return Text('Internet is not connected');
                }
              },
            ),
          ),
        ),
      ),
    );
  }
}

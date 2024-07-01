import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:block_management/blocks/internet/internet_event.dart';
import 'package:block_management/blocks/internet/internet_state.dart';
import 'package:connectivity/connectivity.dart';

class InternetBloc extends Bloc<InternetEvent, InternetState>{
  StreamSubscription? _connectivitySubscription;

Connectivity _connectivity = Connectivity();

  InternetBloc(): super(InternetInitState()){
    on<InternetLostEvent>((event, emit)=> emit(InternetLostState()));
    on<InternetGainedEvent>((event, emit)=> emit(InternetGainedState()));

    _connectivitySubscription = _connectivity.onConnectivityChanged.listen((result){
      if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
        add(InternetGainedEvent());
      }else{
        add(InternetLostEvent());
      }
    });
  }

  @override
  Future<void> close() {
    _connectivitySubscription?.cancel();
    return super.close();
  }
}
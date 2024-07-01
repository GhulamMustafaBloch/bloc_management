import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:block_management/blocks/counter/counter_events.dart';
import 'package:block_management/blocks/counter/counter_state.dart';

class CounterBloc extends Bloc<CounterEvents, CounterState>{
  CounterBloc():super(CounterState()){
    on<IncrementCounter>(_increment);
    on<DecrementCounter>(_decrement);
  }
  void _increment(IncrementCounter event, Emitter<CounterState> emit){
    if (state.counter < 100) {
      emit(state.copyWith(counter: state.counter + 1));
      print('Increment event: New state: ${state.counter}');
    } else {
      print('Counter is already at maximum value (100)');
    }
  }
  void _decrement(DecrementCounter event, Emitter<CounterState> emit){
        if (state.counter > 0) {
      emit(state.copyWith(counter: state.counter - 1));
      print('decrement event: New state: ${state.counter}');
    } else {
      print('Counter is already at minimum value (0)');
    }
  }
}
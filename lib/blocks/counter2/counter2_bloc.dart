import 'package:bloc/bloc.dart';
import 'package:block_management/blocks/counter2/counter2_event.dart';
import 'package:block_management/blocks/counter2/counter2_state.dart';

class Counter2Bloc extends Bloc<Counter2Event, Counter2State>{
  Counter2Bloc(): super(Counter2State()){
    on<IncrementCounter>(_onIncrementCounter2Event);
    on<DecrementCounter>(_onDecrementCounter2Event);
  }
  
  void _onIncrementCounter2Event(IncrementCounter event, Emitter<Counter2State> emit){
      emit(state.updateCounter(newCounter: state.counter + 1));
      print('Increment event: New state: ${state.counter}');
  }
  void _onDecrementCounter2Event(DecrementCounter event, Emitter<Counter2State> emit){
      emit(state.updateCounter(newCounter: state.counter - 1));
      print('Increment event: New state: ${state.counter}');
  }
}
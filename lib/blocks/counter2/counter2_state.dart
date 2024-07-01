import 'package:equatable/equatable.dart';

class Counter2State extends Equatable {
  final int counter;
  Counter2State({
    this.counter = 0,
  });

  Counter2State updateCounter({int? newCounter}){
    return Counter2State(counter: newCounter ?? counter);
  }
  
  @override
  List<Object> get props => [counter];
}


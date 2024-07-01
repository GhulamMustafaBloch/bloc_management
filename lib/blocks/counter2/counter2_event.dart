import 'package:equatable/equatable.dart';

abstract class Counter2Event extends Equatable {
  const Counter2Event();

  @override
  List<Object> get props => [];
}

class IncrementCounter extends Counter2Event{}
class DecrementCounter extends Counter2Event{}

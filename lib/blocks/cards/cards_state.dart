import 'package:block_management/data/maps/list.dart';


abstract class CardsState {}

class CardInitState extends CardsState {
   final List<Map<String, dynamic>> cards;

  CardInitState({required this.cards});
}

class CardFilteredState extends CardsState {
  final List<Map<String, dynamic>> filterdCards;
  CardFilteredState(this.filterdCards);
}

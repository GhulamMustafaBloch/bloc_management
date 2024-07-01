import 'package:block_management/blocks/cards/cards_state.dart';
import 'package:block_management/data/maps/list.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CardsCubit extends Cubit<CardsState> {
  final ListOfMap listOfMap = ListOfMap();

  CardsCubit() : super(CardInitState(cards: ListOfMap().cards));
  void filterCards(String name, String description, ){
    if (name.isEmpty && description.isEmpty) {
      emit(CardInitState(cards: listOfMap.apiData["cards"]));
    }
    else {
      final filtered = listOfMap.cards.where((card) {
        final title = card['title']?.toLowerCase() ?? '';
        final description = card['description']?.toLowerCase() ?? '';
        return 
        title.contains(name.toLowerCase()) || 
        description.contains(name.toLowerCase())
        ;
      }).toList();
      emit(CardInitState(cards: filtered));
      }
  }
}
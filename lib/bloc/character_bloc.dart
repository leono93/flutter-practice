import '../database/characterEvent.dart';
import '../database/characterModel.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CharacterBloc extends Bloc<CharacterEvent, List<Character>> {
  @override
  List<Character> get initialState => List<Character>();

  @override
  Stream<List<Character>> mapEventToState(CharacterEvent event) async* {
    switch (event.eventType) {
      case EventType.setList:
        yield event.characterList;
        break;
      case EventType.add:
        List<Character> newState = List.from(state);
        if (event.newCharacter != null) {
          newState.add(event.newCharacter);
        }
        yield newState;
        break;
      case EventType.delete:
        List<Character> newState = List.from(state);
        newState.removeAt(event.characterIndex);
        yield newState;
        break;
      case EventType.update:
        List<Character> newState = List.from(state);
        newState[event.characterIndex] = event.newCharacter;
        yield newState;
        break;
      default:
        throw Exception('Event not found $event');
    }
  }
}

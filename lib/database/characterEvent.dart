import './characterModel.dart';

enum EventType { setList, add, delete, update }

class CharacterEvent {
  List<Character> characterList;
  Character newCharacter;
  int characterIndex;
  EventType eventType;

  CharacterEvent.setList(List<Character> characters) {
    this.eventType = EventType.setList;
    this.characterList = characters;
  }

  CharacterEvent.add(Character character) {
    this.eventType = EventType.add;
    this.newCharacter = character;
  }

  CharacterEvent.delete(int index) {
    this.eventType = EventType.delete;
    this.characterIndex = index;
  }

  CharacterEvent.update(int index, Character character) {
    this.eventType = EventType.update;
    this.newCharacter = character;
    this.characterIndex = index;
  }
}

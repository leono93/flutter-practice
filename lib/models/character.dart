import 'package:hive/hive.dart';

part 'character.g.dart';

@HiveType(typeId: 1)
class Character {
  @HiveField(0)
  String charName;

  @HiveField(1)
  String charRealm;

  @HiveField(2)
  int charLevel;

  @HiveField(3)
  String charClass;

  Character(this.charName, this.charRealm, this.charLevel, this.charClass);
}

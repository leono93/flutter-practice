import './databaseService.dart';

class Character {
  int id;
  String name;
  String race;
  String level;
  String pclass;
  String realm;
  String faction;

  Character(
      {this.id,
      this.name,
      this.race,
      this.level,
      this.pclass,
      this.realm,
      this.faction});

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      DatabaseService.COLUMN_NAME: name,
      DatabaseService.COLUMN_RACE: race,
      DatabaseService.COLUMN_LEVEL: level,
      DatabaseService.COLUMN_PCLASS: pclass,
      DatabaseService.COLUMN_REALM: realm,
      DatabaseService.COLUMN_FACTION: faction,
    };

    if (id != null) {
      map[DatabaseService.COLUMN_ID] = id;
    }

    return map;
  }

  Character.fromMap(Map<String, dynamic> map) {
    id = map[DatabaseService.COLUMN_ID];
    name = map[DatabaseService.COLUMN_NAME];
    race = map[DatabaseService.COLUMN_RACE];
    level = map[DatabaseService.COLUMN_LEVEL];
    pclass = map[DatabaseService.COLUMN_PCLASS];
    realm = map[DatabaseService.COLUMN_REALM];
    faction = map[DatabaseService.COLUMN_FACTION];
  }
}

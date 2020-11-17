import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import './characterModel.dart';

class DatabaseService {
  static const String TABLE_CHARACTER = "character";
  static const String COLUMN_ID = "id";
  static const String COLUMN_NAME = "name";
  static const String COLUMN_RACE = "race";
  static const String COLUMN_LEVEL = "level";
  static const String COLUMN_FACTION = "faction";

  DatabaseService._();
  static final DatabaseService db = DatabaseService._();

  Database _database;

  Future<Database> get database async {
    if (_database != null) {
      return _database;
    }

    _database = await createDatabase();

    return _database;
  }

  Future<Database> createDatabase() async {
    String dbPath = await getDatabasesPath();

    return await openDatabase(join(dbPath, 'characterDb.db'), version: 1,
        onCreate: (Database database, int version) async {
      print("Creating character table");

      await database.execute(
        "CREATE TABLE $TABLE_CHARACTER ("
        "$COLUMN_ID INTEGER PRIMARY KEY,"
        "$COLUMN_NAME TEXT,"
        "$COLUMN_RACE TEXT,"
        "$COLUMN_LEVEL TEXT,"
        "$COLUMN_FACTION TEXT"
        ")",
      );
    });
  }

  Future<List<Character>> getCharacters() async {
    final db = await database;

    var characters = await db.query(TABLE_CHARACTER, columns: [
      COLUMN_ID,
      COLUMN_NAME,
      COLUMN_RACE,
      COLUMN_LEVEL,
      COLUMN_FACTION
    ]);

    List<Character> characterList = List<Character>();
    characters.forEach((currentCharacter) {
      Character character = Character.fromMap(currentCharacter);

      characterList.add(character);
    });

    return characterList;
  }

  Future<Character> insert(Character character) async {
    final db = await database;
    character.id = await db.insert(TABLE_CHARACTER, character.toMap());
    return character;
  }

  Future<int> delete(int id) async {
    final db = await database;

    return await db.delete(TABLE_CHARACTER, where: "id = ?", whereArgs: [id]);
  }

  Future<int> update(Character character) async {
    final db = await database;

    return await db.update(TABLE_CHARACTER, character.toMap(),
        where: "id = ?", whereArgs: [character.id]);
  }
}

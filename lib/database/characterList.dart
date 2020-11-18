import './characterModel.dart';
import './characterForm.dart';
import './characterEvent.dart';
import './databaseService.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../bloc/character_bloc.dart';

class CharacterList extends StatefulWidget {
  const CharacterList({Key key}) : super(key: key);

  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
  @override
  void initState() {
    super.initState();
    DatabaseService.db.getCharacters().then(
      (characterList) {
        print(characterList);
        BlocProvider.of<CharacterBloc>(context)
            .add(CharacterEvent.setList(characterList));
      },
    );
  }

  showCharacterDialog(BuildContext context, Character character, int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(character.name),
        content: Text("ID ${character.id}"),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    CharacterForm(character: character, characterIndex: index),
              ),
            ),
            child: Text("Update"),
          ),
          FlatButton(
            onPressed: () => DatabaseService.db.delete(character.id).then((_) {
              BlocProvider.of<CharacterBloc>(context).add(
                CharacterEvent.delete(index),
              );
              Navigator.pop(context);
            }),
            child: Text("Delete"),
          ),
          FlatButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Cancel"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    print("Building entire character list scaffold");
    return Scaffold(
      appBar: AppBar(title: Text("Character List")),
      body: Container(
        child: BlocConsumer<CharacterBloc, List<Character>>(
          builder: (context, characterList) {
            return ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                print("characterList: $characterList");

                Character character = characterList[index];
                return ListTile(
                    title: Text(character.name, style: TextStyle(fontSize: 25)),
                    subtitle: Text(
                      "Level ${character.level} ${character.race} ${character.pclass}\n${character.realm}, serving the ${character.faction}",
                      style: TextStyle(fontSize: 15),
                    ),
                    onTap: () =>
                        showCharacterDialog(context, character, index));
              },
              itemCount: characterList.length,
              separatorBuilder: (BuildContext context, int index) =>
                  Divider(color: Colors.black),
            );
          },
          listener: (BuildContext context, characterList) {},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => Navigator.push(
          context,
          MaterialPageRoute(builder: (BuildContext context) => CharacterForm()),
        ),
      ),
    );
  }
}

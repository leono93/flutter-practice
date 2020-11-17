import './characterModel.dart';
import './characterForm.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../bloc/character_bloc.dart';

class CharacterList extends StatefulWidget {
  const CharacterList({Key key}) : super(key: key);

  @override
  _CharacterListState createState() => _CharacterListState();
}

class _CharacterListState extends State<CharacterList> {
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
            onPressed: () => {},
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
      appBar: AppBar(title: Text("CharacterList")),
      body: Container(
        child: BlocConsumer<CharacterBloc, List<Character>>(
          builder: (context, characterList) {
            return ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                print("characterList: $characterList");

                Character character = characterList[index];
                return ListTile(
                    title: Text(character.name, style: TextStyle(fontSize: 30)),
                    subtitle: Text(
                      "Race: ${character.race}\nLevel: ${character.level}\nFaction:${character.faction}",
                      style: TextStyle(fontSize: 20),
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

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
        content: Text("Level" +
            " "
                "${character.level}" +
            " "
                "${character.race}" +
            " "
                "${character.pclass}"),
        actions: <Widget>[
          FlatButton(
            onPressed: () => Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    CharacterForm(character: character, characterIndex: index),
              ),
            ),
            child: Text("Modify"),
          ),
          FlatButton(
            onPressed: () => DatabaseService.db.delete(character.id).then((_) {
              BlocProvider.of<CharacterBloc>(context).add(
                CharacterEvent.delete(index),
              );
              Navigator.pop(context);
            }),
            child: Text("Delete character"),
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
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Color(0x44000000),
          elevation: 0,
          title: Text("Character List"),
        ),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/charList.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            child: BlocConsumer<CharacterBloc, List<Character>>(
              builder: (context, characterList) {
                return ListView.builder(
                  itemBuilder: (BuildContext context, int index) {
                    print("characterList: $characterList");
                    Character character = characterList[index];
                    return Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "${character.faction}" == "Alliance"
                                    ? "assets/AllianceBanner.jpg"
                                    : "assets/HordeBanner.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: ListTile(
                            title: Text(character.name,
                                style: TextStyle(
                                    fontSize: 25,
                                    color: "${character.faction}" == "Alliance"
                                        ? Colors.blue
                                        : Colors.red[700],
                                    shadows: [
                                      Shadow(
                                          blurRadius: 9.0,
                                          color: Colors.black,
                                          offset: Offset(5.0, 5.0))
                                    ])),
                            subtitle: Text(
                              "Level ${character.level} ${character.race} ${character.pclass}\n${character.realm} ${character.faction}",
                              style: TextStyle(
                                  fontSize: 15, color: Color(0xffebebeb)),
                            ),
                            onTap: () => showCharacterDialog(
                                context, character, index)));
                  },
                  itemCount: characterList.length,
                );
              },
              listener: (BuildContext context, characterList) {},
            ),
          ),
          Container(
            alignment: FractionalOffset(0.05, 0.995),
            child: RaisedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Home',
                style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'MORPHEUS',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Container(
            alignment: FractionalOffset(0.95, 0.995),
            child: RaisedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => CharacterForm()),
              ),
              child: Text(
                'Add Character',
                style: TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'MORPHEUS',
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]));
  }
}

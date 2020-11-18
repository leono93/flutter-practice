import './characterModel.dart';
import 'package:flutter/material.dart';
import './databaseService.dart';
import '../bloc/character_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './characterEvent.dart';
import 'package:bordered_text/bordered_text.dart';

class CharacterForm extends StatefulWidget {
  final Character character;
  final int characterIndex;

  CharacterForm({this.character, this.characterIndex});

  @override
  State<StatefulWidget> createState() {
    return CharacterFormState();
  }
}

class CharacterFormState extends State<CharacterForm> {
  String _name;
  String _race;
  String _level;
  String _pclass;
  String _realm;
  String _faction;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      initialValue: _name,
      decoration: InputDecoration(labelText: 'Name'),
      style: TextStyle(fontSize: 15),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is required';
        }

        return null;
      },
      onSaved: (String value) {
        _name = value;
      },
    );
  }

  Widget _buildRace() {
    return TextFormField(
      initialValue: _race,
      decoration: InputDecoration(labelText: 'Race'),
      style: TextStyle(fontSize: 15),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Race is required';
        }

        return null;
      },
      onSaved: (String value) {
        _race = value;
      },
    );
  }

  Widget _buildLevel() {
    return TextFormField(
      initialValue: _level,
      decoration: InputDecoration(labelText: 'Level'),
      style: TextStyle(fontSize: 15),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Level is required';
        }

        return null;
      },
      onSaved: (String value) {
        _level = value;
      },
    );
  }

  Widget _buildPclass() {
    return TextFormField(
      initialValue: _pclass,
      decoration: InputDecoration(labelText: 'Class'),
      style: TextStyle(fontSize: 15),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Class is required';
        }

        return null;
      },
      onSaved: (String value) {
        _pclass = value;
      },
    );
  }

  Widget _buildRealm() {
    return TextFormField(
      initialValue: _realm,
      decoration: InputDecoration(labelText: 'Realm'),
      style: TextStyle(fontSize: 15),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Realm is required';
        }

        return null;
      },
      onSaved: (String value) {
        _realm = value;
      },
    );
  }

  Widget _buildFaction() {
    return TextFormField(
      initialValue: _faction,
      decoration: InputDecoration(labelText: 'Faction'),
      style: TextStyle(fontSize: 15,
      color: Color(0xffc3c4c7)),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Faction is required';
        }

        return null;
      },
      onSaved: (String value) {
        _faction = value;
      },
    );
  }

  @override
  void initState() {
    super.initState();
    if (widget.character != null) {
      _name = widget.character.name;
      _race = widget.character.race;
      _level = widget.character.level;
      _pclass = widget.character.pclass;
      _realm = widget.character.realm;
      _faction = widget.character.faction;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(children: <Widget>[
                  Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/formBackground.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        Container(
        margin: EdgeInsets.only(left: 50, right: 50),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildName(),
              _buildRace(),
              _buildLevel(),
              _buildPclass(),
              _buildRealm(),
              _buildFaction(),
              SizedBox(height: 10),
              widget.character == null
                  ? RaisedButton(
                      child: Text(
                        'Add Character',
                  style: TextStyle(
                  fontSize: 16.0,
                  fontFamily: 'MORPHEUS',
                  fontWeight: FontWeight.bold),
                      ),
                      onPressed: () {
                        if (!_formKey.currentState.validate()) {
                          return;
                        }

                        _formKey.currentState.save();

                        Character character = Character(
                            name: _name,
                            race: _race,
                            level: _level,
                            pclass: _pclass,
                            realm: _realm,
                            faction: _faction);

                        DatabaseService.db.insert(character).then(
                            (storedCharacter) =>
                                BlocProvider.of<CharacterBloc>(context).add(
                                  CharacterEvent.add(storedCharacter),
                                ));

                        Navigator.pop(context);
                      },
                    )
                  : Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                          child: Text(
                            "Update",
                  style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'MORPHEUS',
                  fontWeight: FontWeight.bold),
                          ),
                          onPressed: () {
                            if (!_formKey.currentState.validate()) {
                              print("form");
                              return;
                            }

                            _formKey.currentState.save();

                            Character character = Character(
                                name: _name,
                                race: _race,
                                level: _level,
                                pclass: _pclass,
                                realm: _realm,
                                faction: _faction);

                            DatabaseService.db.update(widget.character).then(
                                (storedCharacter) =>
                                    BlocProvider.of<CharacterBloc>(context).add(
                                      CharacterEvent.update(
                                          widget.characterIndex, character),
                                    ));

                            Navigator.pop(context);
                          },
                        ),
                        RaisedButton(
                          child: Text(
                            "Cancel",
                  style: TextStyle(
                  fontSize: 14.0,
                  fontFamily: 'MORPHEUS',
                  fontWeight: FontWeight.bold),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
      ]),
    );
  }
}

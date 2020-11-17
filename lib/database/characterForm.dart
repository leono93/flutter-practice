import './characterModel.dart';
import 'package:flutter/material.dart';
import './databaseService.dart';
import '../bloc/character_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import './characterEvent.dart';

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
  String _faction;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildName() {
    return TextFormField(
      initialValue: _name,
      decoration: InputDecoration(labelText: 'Name'),
      maxLength: 15,
      style: TextStyle(fontSize: 20),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
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
      maxLength: 15,
      style: TextStyle(fontSize: 20),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
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
      maxLength: 15,
      style: TextStyle(fontSize: 20),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _level = value;
      },
    );
  }

  Widget _buildFaction() {
    return TextFormField(
      initialValue: _faction,
      decoration: InputDecoration(labelText: 'Faction'),
      maxLength: 15,
      style: TextStyle(fontSize: 20),
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
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
      _faction = widget.character.faction;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Character Form")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildName(),
              _buildRace(),
              _buildLevel(),
              _buildFaction(),
              SizedBox(height: 20),
              widget.character == null
                  ? RaisedButton(
                      child: Text(
                        'Submit',
                        style: TextStyle(color: Colors.blue, fontSize: 16),
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
                            style: TextStyle(color: Colors.blue, fontSize: 16),
                          ),
                          onPressed: () {
                            if (!_formKey.currentState.validate()) {
                              print("form");
                              return;
                            }

                            _formKey.currentState.save();

                            Navigator.pop(context);
                          },
                        ),
                        RaisedButton(
                          child: Text(
                            "Cancel",
                            style: TextStyle(color: Colors.red, fontSize: 16),
                          ),
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }
}

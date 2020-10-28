import 'package:flutter/material.dart';
import '../models/character.dart';
import 'package:hive/hive.dart';

class NewCharacterForm extends StatefulWidget {
  @override
  _NewCharacterFormState createState() => _NewCharacterFormState();
}

class _NewCharacterFormState extends State<NewCharacterForm> {
  final _formKey = GlobalKey<FormState>();

  String _charName;
  String _charRealm;
  String _charLevel;
  String _charClass;

  void addCharacter(Character character) {
    final characterBox = Hive.box('character');
    characterBox.add(character);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Character name'),
                        onSaved: (value) => _charName = value,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Character realm'),
                        onSaved: (value) => _charRealm = value,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Character level'),
                        keyboardType: TextInputType.number,
                        onSaved: (value) => _charLevel = value,
                      ),
                    ),
                    Expanded(
                      child: TextFormField(
                        decoration:
                            InputDecoration(labelText: 'Character class'),
                        onSaved: (value) => _charClass = value,
                      ),
                    ),
                  ],
                ),
                RaisedButton(
                  child: Text('Add Character'),
                  onPressed: () {
                    _formKey.currentState.save();
                    final newCharacter = Character(_charName, _charRealm,
                        int.parse(_charLevel), _charClass);
                    addCharacter(newCharacter);
                  },
                ),
              ],
            )));
  }
}

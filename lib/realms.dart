import 'dart:core';
import 'package:flutter/material.dart';
import './raideriopost.dart';
import 'package:bordered_text/bordered_text.dart';

class CharacterField extends StatefulWidget {
  CharacterField({Key key, this.enteredName, this.enteredRealm})
      : super(key: key);
  final String enteredName;
  final String enteredRealm;
  @override
  _CharacterFieldState createState() => _CharacterFieldState();
}

class _CharacterFieldState extends State<CharacterField> {
  TextEditingController nameController = new TextEditingController();
  TextEditingController realmController = new TextEditingController();

  String enteredName = "";
  String enteredRealm = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Character Search')),
        body: Stack(children: <Widget>[
          Container(
              alignment: FractionalOffset(0.5, 0.10),
              child: TextField(
                  controller: nameController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a character name'))),
          Container(
              alignment: FractionalOffset(0.5, 0.20),
              child: TextField(
                  controller: realmController,
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Enter a realm name'))),
          Container(
            alignment: FractionalOffset(0.90, 0.20),
            child: RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListViewRealms()),
                  );
                },
                child: Text('Realm Selection')),
          ),
          Container(
            alignment: FractionalOffset(0.5, 0.4),
            child: RaisedButton(
                onPressed: () {
                  setState(() {
                    enteredName = nameController.text;
                    enteredRealm = realmController.text;
                  });
                  print(enteredName);
                  print(enteredRealm);
                  fetchRioCharacter(enteredName, enteredRealm);
                },
                child: Text('Search')),
          )
        ]));
  }
}

class ListViewRealms extends StatelessWidget {
  final List<String> realms = [
    "Aerie Peak",
    "Agamaggan",
    "Aggramar",
    "Ahn'Qiraj",
    "Al'Akir",
    "Alonsus",
    "Anachronos",
    "Arathor",
    "Argent Dawn",
    "Aszune",
    "Auchindoun",
    "Azjol-Nerub",
    "Azuremyst",
    "Balnazzar",
    "Blade's Edge",
    "Bladefist",
    "Bloodfeather",
    "Bloodhoof",
    "Bloodscalp",
    "Boulderfist",
    "Bronze Dragonflight",
    "Bronzebeard",
    "Burning Blade",
    "Burning Legion",
    "Burning Steppes",
    "Chamber of Aspects",
    "Chromaggus",
    "Crushridge",
    "Daggerspine",
    "Darkmoon Faire",
    "Darksorrow",
    "Darkspear",
    "Deathwing",
    "Defias Brotherhood",
    "Dentarg",
    "Doomhammer",
    "Draenor",
    "Dragonblight",
    "Dragonmaw",
    "Drak'thul",
    "Dunemaul",
    "Earthen Ring",
    "Emerald Dream",
    "Emeriss",
    "Eonar",
    "Executus",
    "Frostmane",
    "Frostwhisper",
    "Genjuros",
    "Ghostlands",
    "Grim Batol",
    "Hakkar",
    "Haomarush",
    "Hellfire",
    "Hellscream",
    "Jaedenar",
    "Karazhan",
    "Kazzak",
    "Khadgar",
    "Kilrogg",
    "Kor'gall",
    "Kul Tiras",
    "Laughing Skull",
    "Lightbringer",
    "Lightning's Blade",
    "Magtheridon",
    "Mazrigos",
    "Moonglade",
    "Nagrand",
    "Neptulon",
    "Nordrassil",
    "Outland",
    "Quel'Thalas",
    "Ragnaros",
    "Ravencrest",
    "Ravenholdt",
    "Runetotem",
    "Saurfang",
    "Scarshield Legion",
    "Shadowsong",
    "Shattered Halls",
    "Shattered Hand",
    "Silvermoon",
    "Skullcrusher",
    "Spinebreaker",
    "Sporeggar",
    "Steamwheedle Cartel",
    "Stormrage",
    "Stormreaver",
    "Stormscale",
    "Sunstrider",
    "Sylvanas",
    "Talnivarr",
    "Tarren Mill",
    "Terenas",
    "Terokkar",
    "The Maelstrom",
    "The Sha'tar",
    "The Venture Co",
    "Thunderhorn",
    "Trollbane",
    "Turalyon",
    "Twilight's Hammer",
    "Twisting Nether",
    "Vashj",
    "Vek'nilash",
    "Wildhammer",
    "Xavius",
    "Zenedar"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Colors.black12,
        appBar: AppBar(
          backgroundColor: Color(0x44000000),
          elevation: 0,
          title: Text("Realm Selection"),
        ),
        body: Stack(children: <Widget>[
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/realmsBackground.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          GridView.count(
              childAspectRatio: 5 / 1,
              crossAxisCount: 2,
              children: List.generate(109, (index) {
                return Center(
                    child: BorderedText(
                        strokeWidth: 1.8,
                        strokeColor: Colors.black,
                        child: Text((realms[index]),
                            style: TextStyle(
                                fontSize: 16,
                                color: Color(0xffd4d4d4),
                                shadows: [
                                  Shadow(
                                      blurRadius: 10,
                                      color: Colors.black,
                                      offset: Offset(5.0, 5.0))
                                ]))));
              }))
        ]));
  }
}

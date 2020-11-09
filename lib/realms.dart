import 'dart:core';
import 'package:flutter/material.dart';

class RealmButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: RaisedButton(
        onPressed: () {
          Navigator.push(
          context,
          MaterialPageRoute(
          builder: (context) => ListViewRealms()),
          );
        }
    ));
  }
}

class ListViewRealms extends StatelessWidget {
  List<String> realms = [
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
      ListView _buildListViewRealms(){
        return ListView.builder(
        itemCount: realms.length,
        itemBuilder: (BuildContext ctxt, int index) {
          return ListTile(
            title: Text(realms[index])
          );
        }
      );
    }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: _buildListViewRealms(),
        );
  }
}



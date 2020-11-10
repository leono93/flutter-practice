import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:http/http.dart' as http;

Future<RaiderIO> fetchRioCharacter() async {
  var realmName = "argent-dawn";
  var charName = "reveformed";
  var url =
      "https://raider.io/api/v1/characters/profile?region=eu&realm=$realmName&name=$charName";
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonResponse = jsonDecode(response.body);
    print(jsonResponse);
    final raiderio = raiderioFromJson(response.body);
    print(raiderio);
    return raiderio;
  } else {
    print("Failed: ${response.statusCode}");
    return null;
  }
}

RaiderIO raiderioFromJson(String str) => RaiderIO.fromJson(json.decode(str));

String raiderioToJson(RaiderIO data) => json.encode(data.toJson());

class RaiderIO {
  RaiderIO({
    this.name,
    this.race,
    this.raiderioClass,
    this.activeSpecName,
    this.activeSpecRole,
    this.gender,
    this.faction,
    this.achievementPoints,
    this.honorableKills,
    this.thumbnailUrl,
    this.region,
    this.realm,
    this.lastCrawledAt,
    this.profileUrl,
    this.profileBanner,
  });

  final String name;
  final String race;
  final String raiderioClass;
  final String activeSpecName;
  final String activeSpecRole;
  final String gender;
  final String faction;
  final int achievementPoints;
  final int honorableKills;
  final String thumbnailUrl;
  final String region;
  final String realm;
  final DateTime lastCrawledAt;
  final String profileUrl;
  final String profileBanner;

  factory RaiderIO.fromJson(Map<String, dynamic> json) => RaiderIO(
        name: json["name"],
        race: json["race"],
        raiderioClass: json["class"],
        activeSpecName: json["active_spec_name"],
        activeSpecRole: json["active_spec_role"],
        gender: json["gender"],
        faction: json["faction"],
        achievementPoints: json["achievement_points"],
        honorableKills: json["honorable_kills"],
        thumbnailUrl: json["thumbnail_url"],
        region: json["region"],
        realm: json["realm"],
        lastCrawledAt: DateTime.parse(json["last_crawled_at"]),
        profileUrl: json["profile_url"],
        profileBanner: json["profile_banner"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "race": race,
        "class": raiderioClass,
        "active_spec_name": activeSpecName,
        "active_spec_role": activeSpecRole,
        "gender": gender,
        "faction": faction,
        "achievement_points": achievementPoints,
        "honorable_kills": honorableKills,
        "thumbnail_url": thumbnailUrl,
        "region": region,
        "realm": realm,
        "last_crawled_at": lastCrawledAt.toIso8601String(),
        "profile_url": profileUrl,
        "profile_banner": profileBanner,
      };
}

class RaiderIOPost extends StatefulWidget {
  RaiderIOPost({Key key}) : super(key: key);

  @override
  _RaiderIOPostState createState() => _RaiderIOPostState();
}

class _RaiderIOPostState extends State<RaiderIOPost> {
  Future<RaiderIO> futureRaiderIO;

  @override
  void initState() {
    super.initState();
    futureRaiderIO = fetchRioCharacter();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FutureBuilder<RaiderIO>(
          future: futureRaiderIO,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Text(snapshot.data.name);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return Center(
                child: Text("Failed to retrieve character information."));
          },
        ),
      ),
    );
  }
}

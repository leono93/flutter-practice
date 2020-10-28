import 'package:flutter/material.dart';
import './home.dart';
import './posts.dart';
import 'package:path_provider/path_provider.dart';
import 'package:hive/hive.dart';
import './models/character.dart';

// void main() => runApp(MyApp());

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final appDocDir = await getApplicationDocumentsDirectory();

  Hive
    ..init(appDocDir.path)
    ..registerAdapter(CharacterAdapter());

  final charactersBox = await Hive.openBox('character');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: FutureBuilder(
            future: Hive.openBox('character'),
            builder: (BuildContext context, AsyncSnapshot snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasError)
                  return Text(snapshot.error.toString());
                else
                  return Home();
              } else
                return Scaffold();
            }));
  }
}

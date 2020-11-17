import 'package:flutter/material.dart';
import './home.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/character_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<CharacterBloc>(
      create: (context) => CharacterBloc(),
      child: MaterialApp(
        home: Home(),
      ),
    );
  }
}

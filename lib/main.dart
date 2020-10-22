import 'package:flutter/material.dart';
import './home.dart';
import './posts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: PostsPage());
  }
}

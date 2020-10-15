import 'package:flutter/material.dart';
import './home.dart';
// import 'package:hive/hive.dart';
// import 'package:path_provider/path_provider.dart' as path_provider;

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   final appDocDir = await path_provider.getApplicationDocumentsDirectory();
//   Hive.init(appDocDir.path);

//   var box = await Hive.openBox('people');
//   box.put('123', 'Peep');
//   box.put('113', 'Poop');

//   var person1 = box.get('123');
//   var person2 = box.get('113');

//   print(person1);
//   print(person2);

//   runApp(MyApp());
// }

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Home());
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/HomeScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'JustRest',
        theme: ThemeData(
            primaryColor: Colors.blueGrey[900],
            scaffoldBackgroundColor: Colors.grey[200]),
        darkTheme: ThemeData(
            primaryColor: Colors.blueGrey[900], brightness: Brightness.dark),
        home: MyHomePage());
  }
}

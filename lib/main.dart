import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justrest/Screens/OTPSCREEN.dart';
import 'package:justrest/Wrapper.dart';


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
          fontFamily:GoogleFonts.poppins().fontFamily,
            primaryColor: Colors.blueGrey[900],
            scaffoldBackgroundColor: Colors.grey[200]),
        /*darkTheme: ThemeData(
            primaryColor: Colors.blueGrey[900], brightness: Brightness.dark,textTheme:TextTheme()),*/
        home: Wrapper());
  }
}

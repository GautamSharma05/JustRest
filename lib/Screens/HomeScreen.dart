import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justrest/Widgets/CustomCarousel.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('JustRest',
            style: TextStyle(
                fontFamily: GoogleFonts.playfairDisplay().fontFamily,
                fontSize: 24,
                letterSpacing: 2.0)),
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            CustomCarousel(),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 250,
              color: Colors.white,
            )
          ],
        ),
      )),
      drawer: Drawer(),
    );
  }
}

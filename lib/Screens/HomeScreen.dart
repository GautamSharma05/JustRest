import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justrest/Widgets/CustomCarousel.dart';
import 'package:justrest/Widgets/MyDrawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const keveryTextColor = TextStyle(
    fontSize: 14.0,
    fontWeight: FontWeight.w400,
    color: Color(0xFFc9c9c9),
  );

  static const keveryBackText = TextStyle(
      fontSize: 15.0,
      fontWeight: FontWeight.w500,
      );

  static const sizedBoxSpace = SizedBox(
    height: 12,
  );
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
              child: Column(
                children: [],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Image.network(
                'https://s3-ap-southeast-1.amazonaws.com/urbanclap-prod/images/growth/luminosity/1614591609525-df202d.jpeg'),
            SizedBox(
              height: 40,
            ),
            Container(
              width: double.infinity,
              height: 450,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Appliances: Service & Repair',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                    Text(
                      'Expert Technicians at your Doorstep in 2 hours',
                      style: TextStyle(
                          color: Colors.grey[700], fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  width: 180,
                                  image: NetworkImage(
                                      'https://i.ytimg.com/vi/5Gmj47oIs1g/maxresdefault.jpg'),
                                ),
                                sizedBoxSpace,
                                Text(
                                  'Air Conditioner',
                                  style: keveryBackText,
                                ),
                                Text(
                                  'Up To 30% off',
                                  style: keveryTextColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  width: 180,
                                  image: NetworkImage(
                                      'https://i.ytimg.com/vi/5Gmj47oIs1g/maxresdefault.jpg'),
                                ),
                                sizedBoxSpace,
                                Text(
                                  'Geyser',
                                  style: keveryBackText,
                                ),
                                Text(
                                  'Up To 10% off',
                                  style: keveryTextColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  width: 180,
                                  image: NetworkImage(
                                      'https://i.ytimg.com/vi/5Gmj47oIs1g/maxresdefault.jpg'),
                                ),
                                sizedBoxSpace,
                                Text(
                                  'Water Purifier',
                                  style: keveryBackText,
                                ),
                                Text(
                                  'Up To 45% off',
                                  style: keveryTextColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  width: 180,
                                  image: NetworkImage(
                                      'https://i.ytimg.com/vi/5Gmj47oIs1g/maxresdefault.jpg'),
                                ),
                                sizedBoxSpace,
                                Text(
                                  'Washing Machine',
                                  style: keveryBackText,
                                ),
                                Text(
                                  'Up To 40% off',
                                  style: keveryTextColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.network(
                'https://play-lh.googleusercontent.com/A25auC_g7D50WJhiCWANK_a4Aw_kfhrLFggSkYxFFlCvcJhXX5xcfJURTaxvatom5hc'),
            SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              height: 450,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cleaning & Pest Control',
                      style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          fontFamily: GoogleFonts.poppins().fontFamily),
                    ),
                    Text(
                      'Remove Hard Stains & more',
                      style: TextStyle(
                          color: Colors.grey[700], fontWeight: FontWeight.w400),
                    ),
                    SizedBox(
                      height: 20,
                    ),

                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  width: 180,
                                  image: NetworkImage(
                                      'https://i.ytimg.com/vi/5Gmj47oIs1g/maxresdefault.jpg'),
                                ),
                                sizedBoxSpace,
                                Text(
                                  'Air Conditioner',
                                  style: keveryBackText,
                                ),
                                Text(
                                  'Up To 30% off',
                                  style: keveryTextColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  width: 180,
                                  image: NetworkImage(
                                      'https://i.ytimg.com/vi/5Gmj47oIs1g/maxresdefault.jpg'),
                                ),
                                sizedBoxSpace,
                                Text(
                                  'Geyser',
                                  style: keveryBackText,
                                ),
                                Text(
                                  'Up To 10% off',
                                  style: keveryTextColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  width: 180,
                                  image: NetworkImage(
                                      'https://i.ytimg.com/vi/5Gmj47oIs1g/maxresdefault.jpg'),
                                ),
                                sizedBoxSpace,
                                Text(
                                  'Water Purifier',
                                  style: keveryBackText,
                                ),
                                Text(
                                  'Up To 45% off',
                                  style: keveryTextColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.all(5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image(
                                  width: 180,
                                  image: NetworkImage(
                                      'https://i.ytimg.com/vi/5Gmj47oIs1g/maxresdefault.jpg'),
                                ),
                                sizedBoxSpace,
                                Text(
                                  'Washing Machine',
                                  style: keveryBackText,
                                ),
                                Text(
                                  'Up To 40% off',
                                  style: keveryTextColor,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      )),
      drawer: MyDrawer(),
    );
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:justrest/Widgets/CustomCarousel.dart';
import 'package:justrest/Widgets/MyDrawer.dart';

const stylingAll = TextStyle(
  fontSize: 14,
);

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
  var document = FirebaseFirestore.instance.collection("images").doc("images");
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
        actions: [
          IconButton(
              onPressed: () {}, icon: Icon(Icons.add_shopping_cart_outlined))
        ],
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
            LayoutBuilder(builder: (context, constraints) {
              if (constraints.maxWidth < 768) {
                return Container(
                  width: double.infinity,
                  height: 420,
                  color: Colors.white,
                  child: serviceCard(),
                );
              } else {
                return Container(
                  width: 1080,
                  height: 420,
                  color: Colors.white,
                  child: serviceCard(),
                );
              }
            }),
            SizedBox(
              height: 40,
            ),
            Image.network(
                'https://s3-ap-southeast-1.amazonaws.com/urbanclap-prod/images/growth/luminosity/1614591609525-df202d.jpeg'),
            SizedBox(
              height: 40,
            ),
            FutureBuilder(
                future: document.get(),
                builder: (BuildContext context,
                    AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text("Something went wrong");
                  }
                  if (snapshot.connectionState == ConnectionState.done) {
                    Map<String, dynamic> data =
                        snapshot.data!.data() as Map<String, dynamic>;
                    return LayoutBuilder(

                      builder: (context, constraints) {
                        if(constraints.maxWidth < 768){
                          return Container(
                            width: double.infinity,
                            height: 470,
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
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w400),
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
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image(
                                                width: 180,
                                                image:
                                                NetworkImage(data['ASRImage1']),
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
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image(
                                                width: 180,
                                                image:
                                                NetworkImage(data['ASRImage2']),
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
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image(
                                                width: 180,
                                                image:
                                                NetworkImage(data['ASRImage3']),
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
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image(
                                                width: 180,
                                                image:
                                                NetworkImage(data['ASRImage4']),
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
                          );
                        }
                        else{
                          return Container(
                            width: double.infinity,
                            height: 280,
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
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Image(
                                              width: 180,
                                              image:
                                              NetworkImage(data['ASRImage1']),
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
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Image(
                                              width: 180,
                                              image:
                                              NetworkImage(data['ASRImage2']),
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
                                      Container(

                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Image(
                                              width: 180,

                                              image:
                                              NetworkImage(data['ASRImage3']),
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
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Image(
                                              width: 180,

                                              image:
                                              NetworkImage(data['ASRImage4']),
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
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          );
                        }
                      }
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }),
            SizedBox(
              height: 20,
            ),
            Image.network(
                'https://play-lh.googleusercontent.com/A25auC_g7D50WJhiCWANK_a4Aw_kfhrLFggSkYxFFlCvcJhXX5xcfJURTaxvatom5hc'),
            SizedBox(
              height: 20,
            ),
            FutureBuilder(
                future: document.get(),
                builder: (context, AsyncSnapshot<DocumentSnapshot> snapshot) {
                  if (snapshot.hasError) {
                    return Text("Something went wrong");
                  }
                  if (snapshot.connectionState == ConnectionState.done) {
                    Map<String, dynamic> data =
                        snapshot.data!.data() as Map<String, dynamic>;
                    return LayoutBuilder(

                      builder: (context, constraints) {
                        if(constraints.maxWidth < 768){
                          return Container(
                            width: double.infinity,
                            height: 470,
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
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w400),
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
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image(
                                                width: 180,
                                                image:
                                                NetworkImage(data['CPCImage1']),
                                              ),
                                              sizedBoxSpace,
                                              Text(
                                                'Bathroom Cleaning',
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
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image(
                                                width: 180,
                                                image:
                                                NetworkImage(data['CPCImage2']),
                                              ),
                                              sizedBoxSpace,
                                              Text(
                                                'Full Home Cleaning',
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
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image(
                                                width: 180,
                                                image:
                                                NetworkImage(data['CPCImage3']),
                                              ),
                                              sizedBoxSpace,
                                              Text(
                                                'sofa & carpet clean..',
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
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: [
                                              Image(
                                                width: 180,
                                                image:
                                                NetworkImage(data['CPCImage4']),
                                              ),
                                              sizedBoxSpace,
                                              Text(
                                                'Pest Control',
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
                          );
                        }
                        else{
                          return Container(
                            width: double.infinity,
                            height: 280,
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
                                        color: Colors.grey[700],
                                        fontWeight: FontWeight.w400),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          children: [
                                            Image(
                                              width: 180,
                                              image:
                                              NetworkImage(data['ASRImage1']),
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
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Image(
                                              width: 180,
                                              image:
                                              NetworkImage(data['ASRImage2']),
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
                                      Container(

                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Image(
                                              width: 180,
                                              image:
                                              NetworkImage(data['ASRImage3']),
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
                                      Container(
                                        margin: EdgeInsets.all(5),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Image(
                                              width: 180,
                                              image:
                                              NetworkImage(data['ASRImage4']),
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
                                    ],
                                  ),

                                ],
                              ),
                            ),
                          );
                        }
                      }
                    );
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }),
          ],
        ),
      )),
      drawer: MyDrawer(),
    );
  }

  Column serviceCard() {
    return Column(
      children: [
        SizedBox(
          height: 40,
        ),
        Row(
          children: [
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/woman.png'),
              ),
              text: 'Salon For Woman',
            ),
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/spa.png'),
              ),
              text: 'Spa for Woman',
            ),
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/man.png'),
              ),
              text: 'Salon For Man',
            ),
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/massage.png'),
              ),
              text: 'Massage For Man',
            )
          ],
        ),
        Row(
          children: [
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/ac.png'),
              ),
              text: 'AC Service & Repair',
            ),
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/tools.png'),
              ),
              text: 'Appliance Repair',
            ),
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/paint-roller.png'),
              ),
              text: 'Home Painting',
            ),
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/vaccum-cleaner.png'),
              ),
              text: 'Cleaning Disinfection',
            )
          ],
        ),
        Row(
          children: [
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/plug-and-socket.png'),
              ),
              text: 'Electrics',
            ),
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/plumber-man.png'),
              ),
              text: 'Plumbers & Carpenters',
            ),
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/water-filter.png'),
              ),
              text: 'RO Service Repair',
            ),
            ResuableCard(
              image: Image(
                width: 40,
                image: AssetImage('assets/images/pesticide.png'),
              ),
              text: 'Pest Control',
            )
          ],
        ),
      ],
    );
  }
}

class ResuableCard extends StatelessWidget {
  ResuableCard({required this.image, required this.text});
  final Image image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: Container(
        width: 90,
        height: 120,
        child: Column(
          children: [
            image,
            SizedBox(
              height: 15,
            ),
            Text(
              text,
              style: stylingAll,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}

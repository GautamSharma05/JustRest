import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:justrest/Screens/AboutUs.dart';
import 'package:justrest/Screens/EditProfile.dart';
import 'package:justrest/Screens/HomeScreen.dart';
import 'package:justrest/Screens/LoginScreen.dart';
import 'package:share/share.dart';
import 'package:url_launcher/url_launcher.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => EditProfile()));
            },
            child: DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  accountName: Text('Gautam Sharma'),
                  accountEmail: Text('gs0852963741@gmail.com'),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/Avatar.png')
                  ),
                )),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text(
              'Home',
              textScaleFactor: 1.2,
            ),
            onTap: () => Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context) => HomeScreen())),
          ),
          ListTile(
            leading: Icon(Icons.alarm_on),
            title: Text(
              'Your Bookings',
              textScaleFactor: 1.2,
            ),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              'Contact Us',
              textScaleFactor: 1.2,
            ),
            onTap: () => launch("tel://8854082108"),
          ),
          ListTile(
            leading: Icon(Icons.share),
            title: Text(
              'invite',
              textScaleFactor: 1.2,
            ),
            onTap: () => Share.share(
                'Check Out My Youtube Video https://youtu.be/PuZrP_PyCCY',
                subject: 'Look what I made!'),
          ),
          ListTile(
              leading: Icon(Icons.info),
              title: Text(
                'About us',
                textScaleFactor: 1.2,
              ),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => AboutUs()))),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text(
              'Privacy Policy',
              textScaleFactor: 1.2,
            ),
            onTap: () {},
          ),
          ListTile(
              leading: Icon(Icons.logout),
              title: Text(
                'Log Out',
                textScaleFactor: 1.2,
              ),
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => LoginScreen()));
              }),
        ],
      ),
    );
  }
}

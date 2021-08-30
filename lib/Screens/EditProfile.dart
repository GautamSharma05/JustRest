import 'package:flutter/material.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({Key? key}) : super(key: key);

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  static const sizedBox = SizedBox(
    height: 30,
  );
  SizedBox allTextFieldSpace() {
    return SizedBox(
      height: 25,
    );
  }

  BoxDecoration decoration(double raduis) {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(raduis),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Edit Profile'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [


            sizedBox,
            CircleAvatar(
              radius: 80.0,
              backgroundImage: AssetImage('assets/images/Avatar.png')
            ),
            sizedBox,
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Full Name',
                    ),
                  ),
                  allTextFieldSpace(),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'E-mail',
                    ),
                  ),
                  allTextFieldSpace(),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                    ),
                    keyboardType: TextInputType.number,
//key: Key,
                  ),
                  allTextFieldSpace(),
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Address',
                    ),
                  ),
                ],
              ),
            ),
            allTextFieldSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900]),
                    child: Text(
                      'Cancel',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                    onPressed: () {

                    },
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Container(
                  width: 150,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.blueGrey[900]),
                    child: Text(
                      'Save',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {},
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

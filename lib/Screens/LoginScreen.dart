import 'package:country_code_picker/country_code_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justrest/Screens/HomeScreen.dart';


class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 80,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              'Login / SignUp',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
            ),
          ),
          Container(
            margin: EdgeInsets.all(40.0),
            width: double.infinity,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(color: Colors.grey)
              ),
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  CountryCodePicker(
                    initialSelection: 'IN',
                    enabled: false,
                  ),
                  Container(
                      width: 130,
                      child: TextField(
                        controller: _phoneController,
                        autofocus: true,
                        maxLength: 10,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          counterText: '',
                          hintText:'Mobile Number',

                        ),
                      )
                  )


                ],
              ),

            ),
            ),


          Expanded(
            child: Align(
              alignment: FractionalOffset.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
              onPressed: () {
                Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Text('Login / SignUp'),
              style: ElevatedButton.styleFrom(primary: Colors.blueGrey[900],),
            ),
                  ),
                )),
          )
        ],
      ),
    );
  }
}

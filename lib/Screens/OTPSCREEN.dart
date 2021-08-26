import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPScreen extends StatelessWidget {
  const OTPScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 50,
          ),
          Image.asset('assets/images/otp.png'),
          Text('Enter verification code',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),),
          Text('We have sent you a 6 digit verification code on',style: TextStyle(color: Colors.grey[600]),),
          Text("+918854082108",style: TextStyle(fontWeight: FontWeight.w700),),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: PinCodeTextField(
              appContext: context,
              length: 6,
              onChanged: (value) {},
              pinTheme: PinTheme(
                  shape: PinCodeFieldShape.box,
                  borderRadius: BorderRadius.circular(5),
                  fieldHeight: 50,
                  fieldWidth: 40,
                  inactiveColor: Colors.blueGrey[900],
                  activeColor: Colors.orange),
              onCompleted: (value) {
                //otp = value;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {

                },
                child: Text('Login / SignUp'),
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey[900],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

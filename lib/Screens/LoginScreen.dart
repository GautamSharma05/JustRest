import 'package:country_code_picker/country_code_picker.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:justrest/Screens/HomeScreen.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

enum MobileVerificationState {
  SHOW_MOBILE_FORM_STATE,
  SHOW_OTP_FORM_STATE,
}

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  MobileVerificationState currentState =
      MobileVerificationState.SHOW_MOBILE_FORM_STATE;
  FirebaseAuth _auth = FirebaseAuth.instance;
  String verificationId = "";
  String otp = '';
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _phoneController = TextEditingController();
  bool showLoading = false;
  void signInWithPhoneAuthCredential(
      PhoneAuthCredential phoneAuthCredential) async {
    setState(() {
      showLoading = true;
    });
    try {
      final authCredential =
          await _auth.signInWithCredential(phoneAuthCredential);
      setState(() {
        showLoading = false;
      });
      if (authCredential.user != null) {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      }
    } on FirebaseAuthException catch (e) {
      setState(() {
        showLoading = false;
      });
      scaffoldMessengerKey.currentState!
          .showSnackBar(SnackBar(content: Text((e.message).toString())));
    }
  }

  getMobileFormWidget(context) {
    return Column(
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
          decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
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
                        hintText: 'Mobile Number',
                      ),
                    ))
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
                    onPressed: () async {
                      setState(() {
                        showLoading = true;
                      });
                      await _auth.verifyPhoneNumber(
                          phoneNumber: "+91" + _phoneController.text,
                          verificationCompleted: (phoneAuthCredential) {
                            setState(() {
                              showLoading = false;
                            });
                            //signInWithPhoneAuthCredential(phoneAuthCredential);
                          },
                          verificationFailed: (verificationFailed) async {
                            setState(() {
                              showLoading = false;
                            });
                            scaffoldMessengerKey.currentState!.showSnackBar(
                                SnackBar(
                                    content: Text((verificationFailed.message)
                                        .toString())));
                          },
                          codeSent: (verificationId, resendToken) {
                            setState(() {
                              showLoading = false;
                              currentState =
                                  MobileVerificationState.SHOW_OTP_FORM_STATE;
                              this.verificationId = verificationId;
                            });
                          },
                          codeAutoRetrievalTimeout: (verificationId) {});
                    },
                    child: Text('Login / SignUp'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.blueGrey[900],
                    ),
                  ),
                ),
              )),
        )
      ],
    );
  }

  getOtpFormWidget(context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 80,
        ),
        Align(
          alignment: Alignment.center,
          child: RichText(
            text: TextSpan(
                text: 'Enter verification code',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                children: <TextSpan>[
                  TextSpan(
                      text: 'We have sent you a 4 digit verification code on'),
                  TextSpan(text: '+91' + _phoneController.text)
                ]),
          ),
        ),
        PinCodeTextField(
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
            otp = value;
          },
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
              onPressed: () {
                PhoneAuthCredential phoneAuthCredential =
                    PhoneAuthProvider.credential(
                        verificationId: verificationId, smsCode: otp);
                signInWithPhoneAuthCredential(phoneAuthCredential);
              },
              child: Text('Login / SignUp'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey[900],
              ),
            ),
          ),
        )
      ],
    );
  }

  final GlobalKey<ScaffoldMessengerState> scaffoldMessengerKey =
      GlobalKey<ScaffoldMessengerState>();
  @override
  Widget build(BuildContext context) {
    return ScaffoldMessenger(
      key: scaffoldMessengerKey,
      child: Scaffold(
        body: showLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : currentState == MobileVerificationState.SHOW_MOBILE_FORM_STATE
                ? getMobileFormWidget(context)
                : getOtpFormWidget(context),
      ),
    );
  }
}

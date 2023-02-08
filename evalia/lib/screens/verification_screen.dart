import 'package:evalia/screens/register_screen.dart';
import 'package:evalia/screens/verificationFinger_screen.dart';
import 'package:flutter/material.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F5F6),
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Color(0xFFF3F5F6),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 150, 0, 0),
                child: Text(
                  ('Verify Code'),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Center(
                  child: RichText(
                    text: const TextSpan(
                        text:
                            "check your sms inbox, we have sent you the code at ",
                        style: TextStyle(color: Colors.black, fontSize: 18),
                        children: [
                          TextSpan(
                            text: "+00 000 0000",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                          ),
                        ]),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Didn’t Receive a code?  '),
                  InkWell(
                    onTap: () {},
                    child: Text(
                      'Resend code',
                      style: TextStyle(
                        color: Color(0xFFFF4B55),
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 50,),
               Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const VerficationFingerScreen(),
                      ),
                    );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF4B55),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                    child: Text('Next',
                        style: TextStyle(color: Color(0xFFFFFFFF),fontWeight: FontWeight.w700,fontSize: 18)),


                  ),
                ),
              ),
             
            ],
            
          ),
        ),
      ),
    );
    
  }
}

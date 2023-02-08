import 'package:evalia/screens/login_screen.dart';
import 'package:evalia/screens/verification_screen.dart';
import 'package:flutter/material.dart';

class PhoneNumberScreen extends StatefulWidget {
  const PhoneNumberScreen({super.key});

  @override
  State<PhoneNumberScreen> createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  TextEditingController pncontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFFF3F5F6),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 40, 0, 0),
                child: Text(
                  ('Register'),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                ),
              ),
             SizedBox(height: 50,),
              
            Padding(
              padding: const EdgeInsets.fromLTRB(37, 0, 60, 0),
              child: RichText(
                text:  const TextSpan(
                 
                  text:'Please enter ',
                 style: TextStyle(color: Colors.black, fontSize: 18),
                 children:[
                  TextSpan(
                            text: "Your phone number",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 18),
                                
                                children: [
                                  TextSpan(
                                    text: ", so we can verify you.",
                                   style: TextStyle(color: Colors.black, fontSize: 18,fontWeight: FontWeight.w400),
                                  ),
                                ]),
                 ]
                 ),
                 
              ),
              
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(35, 50, 0, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text('Enter your phone number',
                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18)),
              ),),
              SizedBox(height: 15,),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  controller: pncontroller,
                  style: TextStyle(color: Colors.red),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red),
                    ),
                    labelStyle: TextStyle(color: Color(0xFFFB3B2B2)),
                    filled: true,
                    hoverColor: Colors.red,
                    fillColor: Colors.white,
                    labelText: '',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
            
              
              SizedBox(height: 40),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const VerificationScreen(),
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
              SizedBox(
                height: 50,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Already Have An Account?',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),
              InkWell(
                onTap: () {
                   Navigator.of(context).pushReplacement(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const LoginScreen(),
                      ),
                    );
                },
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'LOGIN',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromRGBO(255, 75, 85, 1)),
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

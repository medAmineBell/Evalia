import 'package:evalia/screens/register_screen.dart';
import 'package:flutter/material.dart';

class ForgetPwdScreen extends StatefulWidget {
  const ForgetPwdScreen({super.key});

  @override
  State<ForgetPwdScreen> createState() => _ForgetPwdScreenState();
}

class _ForgetPwdScreenState extends State<ForgetPwdScreen> {
  TextEditingController emailcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Color(0xFFF3F5F6),
          elevation: 0,
        ),
        backgroundColor: Color(0xFFF3F5F6),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 150, 0, 0),
                child: Text(
                  ('Forget Password'),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                child: Center(
                  child: Text(
                      'Please enter your email adress / phone number to reset your password',
                      style: TextStyle(
                          fontSize: 17,
                          color: Color(0xFF191C32),
                          fontWeight: FontWeight.w400)),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  controller: emailcontroller,
                  style: TextStyle(color: Colors.red),
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red),
                    ),
                    labelStyle: TextStyle(color: Color(0xFFB3B2B2)),
                    filled: true,
                    hoverColor: Colors.red,
                    fillColor: Colors.white,
                    labelText: 'Enter email / phone number',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              SizedBox(height: 40),
              Center(
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF4B55),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 0),
                    child: Text(
                      'Send',
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontWeight: FontWeight.bold),
                    ),
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

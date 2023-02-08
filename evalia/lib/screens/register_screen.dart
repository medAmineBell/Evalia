import 'package:evalia/screens/login_screen.dart';
import 'package:evalia/screens/phoneNumber_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/data_provider.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController fnamecontroller = TextEditingController();
  TextEditingController pwdcontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController cpwdcontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  bool showPassword=false;
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
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height:50 ,
                    width: 160,
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(212, 70, 56, 0.25),
                        ),
                        child: Text(
                          'GOOGLE',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  SizedBox(
                    height:50 ,
                    width: 160,
                    child: TextButton(
                        onPressed: () {},
                        style: TextButton.styleFrom(
                          backgroundColor: Color.fromRGBO(66, 103, 178, 0.25),
                        ),
                        child: Text(
                          'FACEBOOK',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        )),
                  ),
                ],
              ),
              SizedBox(
                height: 35,
              ),
              Center(
                child: Text('OR',
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey,
                        fontWeight: FontWeight.w600)),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  controller: fnamecontroller,
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
                    labelText: 'Full Name',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
                SizedBox(height: 20,),
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
                    labelStyle: TextStyle(color: Color(0xFFFB3B2B2)),
                    filled: true,
                    hoverColor: Colors.red,
                    fillColor: Colors.white,
                    labelText: 'Enter Email',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
             
              SizedBox(height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: TextFormField(
                  keyboardType: TextInputType.text,
                  autofocus: false,
                  controller: phonecontroller,
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
                    labelText: 'Phone Number',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              SizedBox(
                height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: showPassword,
                  autofocus: false,
                  controller: pwdcontroller,
                  decoration: InputDecoration(
                    
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red),
                    ),
                    filled: true,
                    labelStyle: TextStyle(color: Color(0xFFB3B2B2)),
                    hoverColor: Colors.red,
                    fillColor: Colors.white,
                    labelText: 'Password',
                    suffixIcon: InkWell(onTap:() {
                      setState(() {
                        showPassword= !showPassword;
                      });
                    },
                    child: Icon(showPassword?  Icons.visibility:Icons.visibility_off,color: Colors.red,)),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 163, 9, 9))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 0, 35, 0),
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: showPassword,
                  autofocus: false,
                  controller: cpwdcontroller,
                  decoration: InputDecoration(
                    
                    enabledBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(width: 1, color: Colors.transparent),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(width: 1, color: Colors.red),
                    ),
                    filled: true,
                    labelStyle: TextStyle(color: Color(0xFFB3B2B2)),
                    hoverColor: Colors.red,
                    fillColor: Colors.white,
                    labelText: 'Confirm Password',
                    suffixIcon: InkWell(onTap:() {
                      setState(() {
                        showPassword= !showPassword;
                      });
                    },
                    child: Icon(showPassword?  Icons.visibility:Icons.visibility_off,color: Colors.red,)),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 163, 9, 9))),
                  ),
                ),
              ),
              
              SizedBox(height: 40),
              Center(
                child: TextButton(
                  onPressed: () {
                     Provider.of<DataProvider>(context, listen: false).register(emailcontroller.text, pwdcontroller.text,fnamecontroller.text,phonecontroller.text);
                     Navigator.of(context).pushReplacement(
                       MaterialPageRoute<void>(
                         builder: (BuildContext context) =>
                             const LoginScreen(),
                       ),
                     );
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF4B55),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                    child: Text('Register',
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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

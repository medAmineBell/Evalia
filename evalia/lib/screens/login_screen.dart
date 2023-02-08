import 'package:evalia/provider/data_provider.dart';
import 'package:evalia/screens/forgetPwd_screen.dart';
import 'package:evalia/screens/home_screen.dart';
import 'package:evalia/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController pwdcontroller = TextEditingController();
  bool showPassword = false;
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
                padding: const EdgeInsets.fromLTRB(40, 70, 0, 0),
                child: Text(
                  ('Log In'),
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.w700),
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromRGBO(212, 70, 56, 0.25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                        child: Text(
                          'GOOGLE',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.red,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
                  SizedBox(
                    width: 20,
                  ),
                  TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color.fromRGBO(66, 103, 178, 0.25),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(30, 5, 30, 5),
                        child: Text(
                          'FACEBOOK',
                          style: TextStyle(
                              fontSize: 14,
                              color: Colors.blue,
                              fontWeight: FontWeight.w600),
                        ),
                      )),
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
                  controller: namecontroller,
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
              SizedBox(
                height: 20,
              ),
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
                    labelText: 'Password ',
                    suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            showPassword = !showPassword;
                          });
                        },
                        child: Icon(
                          showPassword
                              ? Icons.visibility
                              : Icons.visibility_off,
                          color: Colors.red,
                        )),
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Color.fromARGB(255, 163, 9, 9))),
                  ),
                ),
              ),
              InkWell(
                onTap: () {
                   Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const ForgetPwdScreen(),
                      ),
                    );
                },
                 child:Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 35, 0),
                  child: Text(
                    'forget password?',
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                        color: Color.fromRGBO(255, 75, 85, 1)),
                  ),
                ),
              ),
              ),
             
              SizedBox(height: 40),
              Center(
                child: TextButton(
                  onPressed: () async{
                   final result = await Provider.of<DataProvider>(context, listen: false).login(namecontroller.text, pwdcontroller.text);
                     if (result) {
                     Navigator.of(context).pushReplacement(
                   MaterialPageRoute<void>(
                     builder: (BuildContext context) =>  HomeScreen(),
                   ),
                 );}
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Color(0xFFFF4B55),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(100, 0, 100, 0),
                    child: Text('Login',
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                  ),
                ),
              ),
              SizedBox(
                height: 70,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Don’t Have An Account?',
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Colors.black),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const RegisterScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'REGISTER',
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

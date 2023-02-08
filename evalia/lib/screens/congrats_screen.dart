import 'package:evalia/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CongratsScreen extends StatefulWidget {
  const CongratsScreen({super.key});

  @override
  State<CongratsScreen> createState() => _CongratsScreenState();
}

class _CongratsScreenState extends State<CongratsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
          Container(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    "assets/images/Done.png",
                  )),
              SizedBox(height: 50),
              Text(
                'Congrats!',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w700),
              ),
              SizedBox(
                height: 17,
              ),
              Text(
                'Account Ceated Succesfully',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: TextButton(
              onPressed: () {
                 Navigator.of(context).pushReplacement(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) =>  HomeScreen(),
                  ),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFFF4B55),
              ),
              child: Text(
                'Get Started',
                style: TextStyle(
                    color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ]));
  }
}

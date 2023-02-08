import 'package:evalia/screens/bookNow_screen.dart';
import 'package:evalia/screens/congrats_screen.dart';
import 'package:flutter/material.dart';

class VerficationFingerScreen extends StatefulWidget {
  const VerficationFingerScreen({super.key});

  @override
  State<VerficationFingerScreen> createState() =>
      _VerficationFingerScreenState();
}

class _VerficationFingerScreenState extends State<VerficationFingerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF3F5F6),
      
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(),
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                "assets/images/FingerPrint.png",
                height: 350,
              )),
          Padding(
            padding: const EdgeInsets.only(bottom: 60),
            child: TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const CongratsScreen(),
                  ),
                );
              },
              style: TextButton.styleFrom(
                backgroundColor: Color(0xFFFF4B55),
              ),
              child: Text(
                'Sign Up By Fingers',
                style: TextStyle(
                    color: Color(0xFFFFFFFF), fontWeight: FontWeight.bold),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

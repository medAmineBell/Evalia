import 'package:evalia/provider/data_provider.dart';
import 'package:evalia/screens/congrats_screen.dart';
import 'package:evalia/screens/home_screen.dart';
import 'package:evalia/screens/login_screen.dart';
import 'package:evalia/screens/forgetPwd_screen.dart';
import 'package:evalia/screens/bookNow_screen.dart';
import 'package:evalia/screens/main_screen.dart';
import 'package:evalia/screens/phoneNumber_screen.dart';
import 'package:evalia/screens/register_screen.dart';
import 'package:evalia/screens/verificationFinger_screen.dart';
import 'package:evalia/screens/verification_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<DataProvider>(create: (_) => DataProvider()),
       
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primaryColor: Color(0xFFFF4B55),
          textTheme: GoogleFonts.poppinsTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: LoginScreen(),
        //home: const BookNowScreen(),
       
      ),
    );
  }
}

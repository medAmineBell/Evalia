import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BookNowScreen extends StatefulWidget {
  const BookNowScreen({super.key});

  @override
  State<BookNowScreen> createState() => _BookNowScreenState();
}

class _BookNowScreenState extends State<BookNowScreen> {
  
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
           
            foregroundColor: Colors.black,
            backgroundColor: Colors.white,
            title: Text('Search'),
            titleTextStyle: TextStyle(
                color: Colors.black, fontWeight: FontWeight.w600, fontSize: 26),
            elevation: 0,
          ),
          body: SingleChildScrollView(
            child: Container(
              height: MediaQuery.of(context).size.height - 110,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(),
                    Column(
                      children: [
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Image.asset(
                              "assets/images/bNow.png",
                            )),
                            SizedBox(
                      height: 20,
                    ),
                            Text(
                      'Find company',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    Text(
                      'You may find Evalia QR code in the entrance',
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Color(0xFFA5A7AC)),
                    ),
                      ],
                      
                    ),
                    
                    
                    TextButton(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        backgroundColor: Color(0xFFFF4B55),
                      ),
                      child: Text(
                        'Scan QR code',
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ]),
            ),
          )),
    );
  }
}

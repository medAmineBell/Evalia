import 'package:evalia/models/insight.dart';
import 'package:evalia/screens/detailsScreen.dart';
import 'package:flutter/material.dart';

class InsightMainItem extends StatelessWidget {
  final Insight insight;

 InsightMainItem({super.key, required this.insight});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 200,
        width: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15), color: Color(0xFFFAFAFA)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        insight.name,
                        style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFF5F7A82)),
                      ),
                      Text(
                              insight.rate.toString(),
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w800,
                                  color: Color(0xFFEB4132)),
                            ),
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  DetailsScreen(insight: insight,),
                    ),
                  );
                    },
                    child: Container(
                          width:90 ,
                          height:45 ,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: Color(0xFFEB4132),
                          ),
                          child: Center(
                              child: Text(
                            'Detail',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w700),
                          )),
                        ),
                  ),
                ],
              ),
            ),
           
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Image.asset('assets/images/courbe.png'),
            ),
            ],
        ),
      ),
    );
  }
}

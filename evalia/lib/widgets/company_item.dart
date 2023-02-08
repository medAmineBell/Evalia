import 'package:evalia/models/company.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../screens/evaluate_screen.dart';

class CompanyItem extends StatelessWidget {
  final Company company;
  const CompanyItem({super.key, required this.company});

  @override
  Widget build(BuildContext context) {
    return Container(
      
      height: 100,
      child: Card(color: Color(0xFFF9F9F9),
      shape:RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10)),
      child:Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: Image.network(company.logo,width:65 ,height: 65,),
          ),
          Column(
             mainAxisAlignment: MainAxisAlignment.center,
             crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(company.name,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,color: Colors.black),),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color(0xFFEB4132),
                  ),
                  Container(
                    width: 90,
                    child: Text(company.adress,style:TextStyle(color: Color(0xFF6B7280)),)),
                ],
              ),
          
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10,),
            child: TextButton(
                    onPressed: (
                      
                    ) {
                       Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  EvaluateScreen(company: company,),
                    ),
                  );
                    },
                      
                    style: TextButton.styleFrom(
                      backgroundColor: Color(0xFFFF4B55),
                    ),
                    child: Text('Evaluate',
                        style: TextStyle(color: Color(0xFFFFFFFF))),
                  ),
          ),
        ],
      ) ,),
    );
  }
}
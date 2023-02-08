import 'package:evalia/models/company.dart';
import 'package:evalia/screens/evaluate_screen.dart';
import 'package:flutter/material.dart';

class CompanyMainItem extends StatelessWidget {
  final Company company;

  const CompanyMainItem({super.key, required this.company});
  

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
          Navigator.of(context).push(
                    MaterialPageRoute<void>(
                      builder: (BuildContext context) =>  EvaluateScreen(company: company,),
                    ),
                  );
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height:250 ,
          width: 200,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color: Color(0xFFFFFFFF)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(),
              Image.network(company.logo),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(company.name,style: TextStyle(fontSize: 13,fontWeight: FontWeight.w900,color: Colors.black),),
                            SizedBox(width: 5,),
                            Icon(Icons.check_circle,color: Colors.black,size:20)
                          ],
                        ),
                        Text('public',style: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,color: Colors.black),),
                      ],
                      
    
                    ),
                  ),
                  
                  Row(
                    children: [
                      Icon(Icons.star,color: Colors.black,),
                      SizedBox(width: 10,),
                      Text('1.9',style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400,color: Colors.black)),
                    ],
                  ),
    
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
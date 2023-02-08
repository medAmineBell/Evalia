import 'package:evalia/models/company.dart';
import 'package:evalia/widgets/companyMainItem.dart';
import 'package:evalia/widgets/company_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/data_provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  TextEditingController searchcontroller = TextEditingController();
   List<Company> company =[];
   @override
  void initState() {
    super.initState();
    Provider.of<DataProvider>(context, listen: false).getCompanies();
  }
  @override
  Widget build(BuildContext context) {
    company = Provider.of<DataProvider>(context).companies;
    return SingleChildScrollView(
      child: Container(
      
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 30,right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Quality \n Services scores",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
              ),
              SizedBox(height: 41,),
              TextFormField(
                keyboardType: TextInputType.text,
                autofocus: false,
                controller: searchcontroller,
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
                  suffixIcon: Icon(
                    Icons.search,
                    color: Colors.red,
                  ),
                  hoverColor: Colors.red,
                  fillColor: Color(0xFFF4F4F5),
                  labelText: 'Attijari bank ',
                  contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              SizedBox(height: 40,),
          Container(
            height: 270,
            child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  ...company.map((c) => CompanyMainItem(company: c,)).toList()
                ],
              ),
          ),
          SizedBox(height: 35,),
          Padding(

          padding: const EdgeInsets.fromLTRB(10, 30, 0, 0),
          child: Text(
            'Reports & Insights',
            style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 0, 0, 0)),
          ),
        ),
         SizedBox(height: 15,),
          ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              physics: NeverScrollableScrollPhysics(),
              children: [
                ...company.map((c) => CompanyItem(company: c,)).toList()
              ],
            ),
    
                
            ],
          ),
        ),
      ),
    );
  }
}

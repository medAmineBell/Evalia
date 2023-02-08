import 'package:evalia/models/company.dart';
import 'package:evalia/screens/bookNow_screen.dart';
import 'package:evalia/widgets/category_item.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/data_provider.dart';
import '../widgets/company_item.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  TextEditingController searchcontroller = TextEditingController();
  List<String> categories = [
    "Banking",
    "Telecom",
    "Gov",
    "Public Sector",
    "Insurance"
  ];
   List<Company> company =[];
   @override
  void initState() {
    super.initState();
    Provider.of<DataProvider>(context, listen: false).getCompanies();
  }
  @override
  Widget build(BuildContext context) {
    company = Provider.of<DataProvider>(context).companies;
    return Container(color: Colors.white,

        child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 20, 10, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Find company",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 20,
                ),
              ),
              Row(
                children: [
                  Icon(
                    Icons.location_on,
                    color: Color.fromARGB(255, 196, 194, 194),
                  ),
                  Text('Nearby Tunis')
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
          child: Text(
            'City/name',
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color(0xFF7A869A)),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
          child: Row(
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.75,
                child: TextFormField(
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
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.red,
                    ),
                    hoverColor: Colors.red,
                    fillColor: Colors.white,
                    labelText: 'Attijari bank ',
                    contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                  ),
                ),
              ),
              SizedBox(
                width: 15,
              ),
              Card(
                  color: Color(0xFFF4F4F5),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  child: IconButton(
                      onPressed: () {
                         Navigator.of(context).push(
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const BookNowScreen(),
                      ),
                         );
                      }, icon: Icon(Icons.qr_code_scanner))),
            ],
          ),
        ),
        
        Container(
          height: 100,

          child: ListView(
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            children: [
              ...categories.map((name) => CategoryItem(name: name)).toList()
            ],
          ),
        ),
        
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
          child: Text('Search results',style: TextStyle(color: Color(0xFF7A869A),fontSize: 14,fontWeight: FontWeight.w600),),
        ),
        Expanded(
          child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                ...company.map((c) => CompanyItem(company: c,)).toList()
              ],
            ),
        ),

      ],
    ));
  }
}

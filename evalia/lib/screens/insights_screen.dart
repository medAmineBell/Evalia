import 'package:evalia/models/insight.dart';
import 'package:evalia/widgets/insight_item.dart';
import 'package:flutter/material.dart';

class InsightsScreen extends StatefulWidget {
  const InsightsScreen({super.key});

  @override
  State<InsightsScreen> createState() => _InsightsScreenState();
}

class _InsightsScreenState extends State<InsightsScreen> {
  List<Insight> insight=[
    Insight(name: 'public sector', rate: 2.8),Insight(name: 'banking', rate: 3)];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Color(0xFFF3F5F6),
        child: Padding(
          padding: const EdgeInsets.only(left: 25, top: 30, right: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Quality \nServices Insights",
                style: TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
              ),
               Container(
              height: 270,
              child: ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  children: [
                    ...insight.map((c) => InsightMainItem(insight: c,)).toList()
                  ],
                ),
            ),
              Text(style: TextStyle(fontSize: 12,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFF777777),),'Congue et vitae sit aliquet integer euismod et viverra. Aliquam vitae accumsan maecenas Lorem ipsum dolor sit amet, consectetur adipiscing elit. Commodo consectetur diam facilisis cras. Tristique odio et a mauris consectetur. Congue et vitae sit aliquet integer euismod et viverra. Aliquam vitae accumsan maecenas')
            , SizedBox(height: 20,),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              elevation: 1,
              child: Container(
                padding: EdgeInsets.all(8),
                height: 50,
                child: Row(
                  
                  children: [
                    Image.asset('assets/images/banking.png'),
                    SizedBox(width: 20,),
                    Text('Banking and financial services',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              elevation: 1,
              child: Container(
                padding: EdgeInsets.all(8),
                height: 50,
                child: Row(
                  
                  children: [
                    Image.asset('assets/images/administration.png'),
                    SizedBox(width: 20,),
                    Text('Administrations',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
              elevation: 1,
              child: Container(
                padding: EdgeInsets.all(8),
                height: 50,
                child: Row(
                  
                  children: [
                    Image.asset('assets/images/umbrella.png'),
                    SizedBox(width: 20,),
                    Text('Health insurances',style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),)
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
          
            ],
          ),
        ),
      ),
    );
  }
}

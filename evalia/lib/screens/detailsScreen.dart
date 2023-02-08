import 'package:evalia/models/insight.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  final Insight insight;
  const DetailsScreen({super.key, required this.insight});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.black,
          backgroundColor: Color(0xFFF3F5F6),
          elevation: 0,
        ),
        body: Container(
          color: Color(0xFFF3F5F6),
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.only(left: 25, top: 30, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Quality \nServices scores",
                      style:
                          TextStyle(fontWeight: FontWeight.w400, fontSize: 28),
                    ),
                    Container(
                      width: 45,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFEB4132),
                      ),
                      child: Center(
                          child: Text(widget.insight.rate.toString(),
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 45,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Partcipants',
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600)),
                        Text('People participated',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                color: Color(0xFF6B7280)))
                      ],
                    ),
                    Container(
                      width: 100,
                      height: 45,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        color: Color(0xFFE9E9E9),
                      ),
                      child: Center(
                          child: Text(
                        '287,2674',
                        style: TextStyle(
                            color: Color(0xFF4B5563),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                      )),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Summary',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF646467),
                  ),
                ),
                Text(style: TextStyle(fontSize: 12,
                    fontWeight: FontWeight.w400,
                    color: Color(0xFF777777),),'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Commodo consectetur diam facilisis cras. Tristique odio et a mauris consectetur. Congue et vitae sit aliquet integer euismod et viverra. Aliquam vitae accumsan maecenas Lorem ipsum dolor sit amet, consectetur adipiscing elit. Commodo consectetur diam facilisis cras. Tristique odio et a mauris consectetur. Congue et vitae sit aliquet integer euismod et viverra. Aliquam vitae accumsan maecenas')
              ],
            ),
          ),
        ),
      ),
    );
  }
}

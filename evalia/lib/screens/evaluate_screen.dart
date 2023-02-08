import 'package:evalia/models/company.dart';
import 'package:flutter/material.dart';

class EvaluateScreen extends StatefulWidget {
  final Company company;
  EvaluateScreen({super.key, required this.company});

  @override
  State<EvaluateScreen> createState() => _EvaluateScreenState();
}

class _EvaluateScreenState extends State<EvaluateScreen> {
  int rate = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 300,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage("assets/images/siege.png"),
                                  fit: BoxFit.cover)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              CircleAvatar(
                                  backgroundColor: Colors.white,
                                  radius: 30,
                                  child: Image.network(
                                    widget.company.logo,
                                    width: 50,
                                    height: 50,
                                  )),
                              SizedBox(
                                height: 10,
                              ),
                              Text(
                                widget.company.name,
                                style: TextStyle(color: Colors.white),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: Color(0xFFEB4132),
                                  ),
                                  Text(
                                    widget.company.adress,
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                          top: 20,
                          left: 20,
                          child: InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 25, right: 25, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Overview'),
                              Text('Details'),
                              Text('Reviews'),
                              Text('Contact'),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Congue et vitae sit aliquet integer euismod et viverra. Aliquam vitae accumsan.',
                            style: TextStyle(
                                color: Color(0xFFA5A7AC),
                                fontWeight: FontWeight.w400,
                                fontSize: 16),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 70,
                                    height: 45,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(12),
                                      color: Color(0xFFFFAB07),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceAround,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Icon(
                                          Icons.star,
                                          color: Colors.white,
                                        ),
                                        Text(
                                          widget.company.reviewNumber,
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w700),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text(
                                    '(4232 reviews)',
                                    style: TextStyle(
                                        color:
                                            Color.fromRGBO(122, 134, 154, 0.6),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset('assets/images/improve.png'),
                                  SizedBox(
                                    width: 15,
                                  ),
                                  Text('Improving service',
                                      style: TextStyle(
                                          color: Color.fromRGBO(
                                              122, 134, 154, 0.6),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600))
                                ],
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 30, 0, 0),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              'Rate Attijari',
                              style: TextStyle(
                                  color: Color(0xFF646467),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(30, 20, 30, 30),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    rate = 1;
                                  });
                                },
                                child: Container(
                                  width: 60,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: rate == 1
                                        ? Colors.black
                                        : Color.fromARGB(255, 194, 194, 199),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: rate == 1
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                      Text(
                                        '1',
                                        style: TextStyle(
                                            color: rate == 1
                                                ? Colors.white
                                                : Color(0xFF646467),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    rate = 2;
                                  });
                                },
                                child: Container(
                                  width: 60,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    color: rate == 2
                                        ? Colors.black
                                        : Color.fromARGB(255, 194, 194, 199),
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: rate == 2
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                      Text(
                                        '2',
                                        style: TextStyle(
                                            color: rate == 2
                                                ? Color.fromARGB(
                                                    255, 255, 255, 255)
                                                : Color(0xFF646467),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    rate = 3;
                                  });
                                },
                                child: Container(
                                  width: 60,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: rate == 3
                                        ? Colors.black
                                        : Color.fromARGB(255, 194, 194, 199),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: rate == 3
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                      Text(
                                        '3',
                                        style: TextStyle(
                                            color: rate == 3
                                                ? Color.fromARGB(
                                                    255, 255, 255, 255)
                                                : Color(0xFF646467),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                             InkWell(
                                onTap: () {
                                  setState(() {
                                    rate = 4;
                                  });
                                },
                                child: Container(
                                  width: 60,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: rate == 4
                                        ? Colors.black
                                        : Color.fromARGB(255, 194, 194, 199),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: rate == 4
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                      Text(
                                        '4',
                                        style: TextStyle(
                                            color: rate == 4
                                                ? Color.fromARGB(
                                                    255, 255, 255, 255)
                                                : Color(0xFF646467),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    rate = 5;
                                  });
                                },
                                child: Container(
                                  width: 60,
                                  height: 55,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    color: rate == 5
                                        ? Colors.black
                                        : Color.fromARGB(255, 194, 194, 199),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: rate == 5
                                            ? Colors.white
                                            : Colors.black,
                                      ),
                                      Text(
                                        '5',
                                        style: TextStyle(
                                            color: rate == 5
                                                ? Color.fromARGB(
                                                    255, 255, 255, 255)
                                                : Color(0xFF646467),
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                               ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Align(
                        child: Text(
                          'Advanced',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                              color: Color(0xFF777777)),
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30, right: 30),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Hosptality and welcoming',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromRGBO(122, 134, 154, 0.6)),
                          ),
                          Row(
                            children: [
                              Text(
                                'Good',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromRGBO(122, 134, 154, 0.6)),
                              ),
                              Icon(Icons.expand_more)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Resolving issues',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromRGBO(122, 134, 154, 0.6)),
                          ),
                          Row(
                            children: [
                              Text(
                                'Good',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromRGBO(122, 134, 154, 0.6)),
                              ),
                              Icon(Icons.expand_more)
                            ],
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 30, right: 30, top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Service delivery ',
                            style: TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 14,
                                color: Color.fromRGBO(122, 134, 154, 0.6)),
                          ),
                          Row(
                            children: [
                              Text(
                                'Good',
                                style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    fontSize: 14,
                                    color: Color.fromRGBO(122, 134, 154, 0.6)),
                              ),
                              Icon(Icons.expand_more)
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Padding(
                padding: const EdgeInsets.only(left: 100, right: 100),
                child: Text('Evaluate now'),
              ),
              style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            ),
          ],
        ),
      ),
    );
  }
}

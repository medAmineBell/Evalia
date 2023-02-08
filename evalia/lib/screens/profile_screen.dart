import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images/AccountOwner.png",
            
          ),
          Text(
            'Matt Revas',
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.w600),
          ),
          Text(
            'ID : 56456941',
            style: TextStyle(
                color: Color.fromRGBO(
                  25,
                  28,
                  50,
                  0.4,
                ),
                fontWeight: FontWeight.w600,
                fontSize: 16),
          ),
          SizedBox(height: 100,),
          ListTile(
            leading: Icon(Icons.settings_sharp,color: Color(0xFFFF4B55)),
            title: Text('Preferences',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18)),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: Icon(Icons.lock_open,color: Color(0xFFFF4B55)),
            title: Text('Account Security',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18),),
            subtitle: Container(
              height: 5,
              width: 60,
              child: Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color.fromRGBO(158, 158, 158, 1),
                        width: 1.0,
                      ),
                      color: Color.fromARGB(255, 234, 218, 219),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  FractionallySizedBox(
                    widthFactor: 0.4,
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFFF4B55),
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  )
                ],
              ),
            ),
            trailing: Icon(Icons.navigate_next),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(75, 0, 0, 0),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Intermediate',style: TextStyle(color: Color(0xFF9395A4),fontWeight: FontWeight.w600,fontSize: 16),)),
          ),
          
          ListTile(
            leading: Icon(Icons.help_outline,color: Color(0xFFFF4B55)),
            title: Text('Help',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18)),
            trailing: Icon(Icons.navigate_next),
          ),
          ListTile(
            leading: Icon(Icons.login_outlined,color: Color(0xFFFF4B55),),
            title: Text('Logout',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 18)),
            
          ),
        ],
      );
  }
}

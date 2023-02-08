import 'package:evalia/screens/insights_screen.dart';
import 'package:evalia/screens/main_screen.dart';
import 'package:evalia/screens/profile_screen.dart';
import 'package:evalia/screens/search_screen.dart';
import 'package:evalia/widgets/fab_bottom_app_bar.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var currentIndex = 0;
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  void changePage(int index) {
    setState(() {
      currentIndex = index;
      pageController.animateToPage(index,
          duration: const Duration(milliseconds: 100), curve: Curves.bounceIn);
    });
  }

  void _selectedTab(int index) {
    setState(() {
      if (currentIndex != index) {
        pageController.jumpToPage(index);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          foregroundColor: Colors.grey,
          actions: [
            IconButton(onPressed: (){}, icon: Icon(Icons.notifications_rounded))
          ],
          leading: IconButton(onPressed: (){}, icon: Icon(Icons.menu)),
          backgroundColor: Colors.white,
          elevation: 1,centerTitle: true,
          title: Image.asset("assets/images/logo.png"),
        ),
        body: PageView(
          controller: pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const <Widget>[
           MainScreen(),
            SearchScreen(),
            ProfileScreen(),InsightsScreen(),
          
          ],
          onPageChanged: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
        ),
       
        bottomNavigationBar: FABBottomAppBar(
          color: Colors.grey,
          selectedColor: Colors.black,
          notchedShape: const CircularNotchedRectangle(),
          backgroundColor: Color(0xFFFAFAFA),
          onTabSelected: _selectedTab,
          items: [
            FABBottomAppBarItem(
              iconData: Icons.home_filled,
              //text: 'Menu',
              text: '',
            ),
            FABBottomAppBarItem(
              iconData: Icons.search,
              //text: 'Table',
              text: '',
            ),
            FABBottomAppBarItem(
              iconData: Icons.person,
              //text: 'Events',
              text: '',
            ),
            FABBottomAppBarItem(
              iconData: Icons.shopping_bag,
              //text: 'Profile',
              text: '',
            ),
          ],
          
        ),
      ),
    );
  }
}

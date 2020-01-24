import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_app/home.dart';
import 'package:property_app/profile.dart';
import 'package:property_app/screens/automobile.dart';
import 'package:property_app/screens/real_estate.dart';
import 'drawer.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    Home(),
    RealEstate(),
    AutoMobile(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      drawer: NavigationDrawer(),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.home), title: Text('Home')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.solidBuilding),
              title: Text('Real Estate')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.carAlt), title: Text('Automobile')),
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.user), title: Text('Profile')),
        ],
      ),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}

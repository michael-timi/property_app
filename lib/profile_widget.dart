import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'drawer.dart';
import 'home.dart';
import 'profile.dart';
import 'screens/automobile.dart';
import 'screens/real_estate.dart';

class ProfileWidget extends StatefulWidget {
  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  int _currentIndex = 3;
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

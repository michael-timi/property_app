import 'package:flutter/material.dart';
import 'package:property_app/drawer.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'MVP | Profile',
          style: TextStyle(letterSpacing: 2.0),
        ),
        centerTitle: true,
      ),
      drawer: NavigationDrawer(),
      body: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

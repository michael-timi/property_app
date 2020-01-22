import 'package:flutter/material.dart';
import 'package:property_app/drawer.dart';

class EventCentre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Event Centre',
          style: TextStyle(letterSpacing: 2.0),
        ),
        centerTitle: true,
      ),
      drawer: NavigationDrawer(),
    );
  }
}

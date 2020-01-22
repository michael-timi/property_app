import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_app/widget/automobile_carousel.dart';
import 'drawer.dart';
import 'widget/asset_carousel.dart';
import 'widget/location_carousel.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'MVP | Home',
          style: TextStyle(letterSpacing: 2.0),
        ),
        centerTitle: true,
      ),
      drawer: NavigationDrawer(),
      body: _buildRealEstate(),
    );
  }
}

class _buildRealEstate extends StatefulWidget {
  @override
  __buildRealEstateState createState() => __buildRealEstateState();
}

class __buildRealEstateState extends State<_buildRealEstate> {
  int _selectedIndex = 0;
  List<IconData> _icons = [
    FontAwesomeIcons.building,
    FontAwesomeIcons.car,
    FontAwesomeIcons.bullhorn,
    FontAwesomeIcons.search,
  ];

  Widget _buildIcon(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = index;
        });
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color:
              _selectedIndex == index ? Color(0xFFDBECF1) : Color(0xFFE7EBEE),
        ),
        child: Icon(
          _icons[index],
          size: 20,
          color:
              _selectedIndex == index ? Color(0xFF0A0E51) : Color(0xFFB4C1C4),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
      padding: EdgeInsets.symmetric(vertical: 30),
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 20.0, right: 120.0),
          child: Text(
            'What would you like to find?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: _icons
              .asMap()
              .entries
              .map(
                (MapEntry map) => _buildIcon(map.key),
              )
              .toList(),
        ),
        SizedBox(height: 20),
        LocationCarousel(),
        SizedBox(height: 10),
        AssetCarousel(),
        SizedBox(height: 10),
        AutomobileCarousel(),
      ],
    ));
  }
}

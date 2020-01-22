import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_app/drawer.dart';
import 'package:property_app/widget/asset_page_carousel.dart';

class AutoMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'MVP | Automobile',
          style: TextStyle(letterSpacing: 2.0),
        ),
        centerTitle: true,
      ),
      drawer: NavigationDrawer(),
      body: _buildAutomobile(),
    );
  }
}

class _buildAutomobile extends StatefulWidget {
  @override
  __buildAutomobileState createState() => __buildAutomobileState();
}

class __buildAutomobileState extends State<_buildAutomobile> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}


class _buildRealEstate extends StatefulWidget {
  @override
  __buildRealEstateState createState() => __buildRealEstateState();
}

class __buildRealEstateState extends State<_buildRealEstate> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 20),
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15.0),
              child: Container(
                padding: EdgeInsets.fromLTRB(20.0, 5.0, 5.0, 5.0),
                height: 50,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Color(0xFFDBECF1)),
                child: Center(
                  child: TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      suffixIcon: GestureDetector(
                        child: Icon(
                          FontAwesomeIcons.search,
                          color: Color(0xFF0A0E51).withOpacity(0.7),
                        ),
                        onTap: () {
                          print('tapped');
                        },
                      ),
                      hintText: 'What would you like to discover?',
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            AssetPageCarousel(),
          ],
        ));
  }
}

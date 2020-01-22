import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_app/drawer.dart';
import 'package:property_app/models/automobile_model.dart';
import 'package:property_app/widget/automobile_carousel.dart';

import 'automobile_screen.dart';

class Automobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(
          'MVP | Automoblie',
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
  final Automobile automobile;

  _buildAutomobile({this.automobile});

  @override
  __buildAutomobileState createState() => __buildAutomobileState();
}

class __buildAutomobileState extends State<_buildAutomobile> {
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
        SizedBox(
          height: 10,
        ),
        AutomobilePage(),
      ],
    ));
  }
}

class AutomobilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Exclusive Rides',
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.bold, letterSpacing: 1.5),
          ),
        ),
        Container(
          height: 240,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: automobiles.length,
              itemBuilder: (BuildContext context, int index) {
                Automobile auto = automobiles[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AutomobileScreen(
                        automobile: auto,
                      ),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.all(10.0),
                    width: 180,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          bottom: 0.0,
                          child: Container(
                            height: 120.0,
                            width: 180.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBECF1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    automobile.name,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                    style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w600,
                                      letterSpacing: 1.5,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    automobile.details,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    '\N${automobile.price}',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 18,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20.0),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.black26,
                                    offset: Offset(0.0, 2.0),
                                    blurRadius: 6.0),
                              ]),
                          child: Hero(
                            tag: automobile.imgUrl,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                image: AssetImage(automobile.imgUrl),
                                height: 140.0,
                                width: 160.0,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                );
              }),
        )
      ],
    );
  }
}

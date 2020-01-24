import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_app/models/automobile_model.dart';

class AutomobileScreen extends StatefulWidget {
  final Automobile automobile;

  AutomobileScreen({this.automobile});

  @override
  _AutomobileScreenState createState() => _AutomobileScreenState();
}

class _AutomobileScreenState extends State<AutomobileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height,
                color: Color(0xFFDBB6DA).withOpacity(0.5),
              ),
              Positioned(
                  bottom: 20.0,
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xFF0A0E51).withOpacity(0.2),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xFF0A0E51).withOpacity(0.4),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xFF0A0E51).withOpacity(0.6),
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            size: 15,
                            color: Color(0xFF0A0E51).withOpacity(0.8),
                          ),
                          Icon(
                            Icons.directions_car,
                            size: 20,
                            color: Color(0xFF0A0E51),
                          ),
                        ],
                      ),
                    ),
                  )),
              Container(
                height: MediaQuery.of(context).size.height - 70.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40.0),
                      bottomRight: Radius.circular(40.0),
                    ),
                    color: Colors.white),
              ),
              Container(
                height: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      offset: Offset(0.0, 2.0),
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Hero(
                  tag: widget.automobile.imgUrl,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                    ),
                    child: Image(
                      image: AssetImage(widget.automobile.imgUrl),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.width + 20.0,
                left: 20.0,
                right: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.locationArrow,
                            size: 15.0,
                            color: Colors.grey,
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Text(
                            widget.automobile.details,
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 20.0,
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.favorite_border,
                        size: 25.0,
                        color: Color(0xFF0A0E51),
                      )
                    ]),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      child: Text(
                        widget.automobile.name,
                        style: TextStyle(
                          color: Color(0xFF0A0E51),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xFFDBB6DA).withOpacity(0.5),
                      ),
                      child: Text(
                        '\N${widget.automobile.price}',
                        style: TextStyle(
                          color: Color(0xFF0A0E51),
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.0,
                  vertical: 20.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.arrowLeft),
                        iconSize: 20,
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                              color: Colors.white),
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.search),
                            iconSize: 20,
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.0),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black26,
                                  offset: Offset(0.0, 2.0),
                                  blurRadius: 6.0,
                                ),
                              ],
                              color: Colors.white),
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.sortAmountDown),
                            iconSize: 20,
                            onPressed: () => Navigator.pop(context),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(30),
                  bottomLeft: Radius.circular(30),
                ),
                color: Color(0xFF0A0E51)),
          ),
        ],
      ),
    );
  }
}

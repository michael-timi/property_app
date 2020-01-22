import 'package:flutter/material.dart';
import 'package:property_app/models/asset_model.dart';
import 'package:property_app/screens/asset_screen.dart';
import 'package:property_app/screens/real_estate.dart';

class AssetCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Exclusive Properties',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5),
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => RealEstate(),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Color(0xFFDBECF1),
                  ),
                  child: Text(
                    'See All',
                    style: TextStyle(
                        color: Color(0xFF0A0E51),
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 230,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: assets.length,
              itemBuilder: (BuildContext context, int index) {
                Asset asset = assets[index];
                return GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => AssetScreen(
                        asset: asset,
                      ),
                    ),
                  ),
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical:10.0),
                    width: 160,
                    child: Stack(
                      alignment: Alignment.topCenter,
                      children: <Widget>[
                        Positioned(
                          bottom: 10.0,
                          child: Container(
                            height: 100.0,
                            width: 150.0,
                            decoration: BoxDecoration(
                              color: Color(0xFFDBECF1),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Text(
                                    asset.name,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                    ),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    asset.address,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Text(
                                    '\N${asset.price}',
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
                            tag: asset.imgUrl,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20.0),
                              child: Image(
                                image: AssetImage(asset.imgUrl),
                                height: 140.0,
                                width: 140.0,
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

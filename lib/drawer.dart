import 'package:flutter/material.dart';
import 'package:property_app/screens/automobile.dart';
import 'package:property_app/homepage.dart';
import 'package:property_app/screens/real_estate.dart';

import 'screens/event_centre.dart';
import 'search.dart';

class NavigationDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountEmail: Text('name@yourmail.com'),
            accountName: Text('yourname'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: FlutterLogo(
                size: 50,
              ),
            ),
          ),
          NavItem(
            title: 'MVP | Home',
            icon: Icon(
              Icons.home,
              color: Color(0xFF0A0E51),
              size: 30,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ));
            },
          ),
          SizedBox(
            height: 10,
          ),
          NavItem(
            title: 'Real Estate',
            icon: Icon(
              Icons.business,
              color: Color(0xFF0A0E51),
              size: 30,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RealEstate(),
                  ));
            },
          ),
          SizedBox(
            height: 10,
          ),
          NavItem(
            title: 'Automobile',
            icon: Icon(
              Icons.directions_car,
              color: Color(0xFF0A0E51),
              size: 30,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AutoMobile(),
                  ));
            },
          ),
          SizedBox(
            height: 10,
          ),
          NavItem(
            title: 'Event Centre',
            icon: Icon(
              Icons.explore,
              color: Color(0xFF0A0E51),
              size: 30,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EventCentre(),
                  ));
            },
          ),
          SizedBox(
            height: 10,
          ),
          NavItem(
            title: 'Search',
            icon: Icon(
              Icons.search,
              color: Color(0xFF0A0E51),
              size: 30,
            ),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Search(),
                  ));
            },
          ),
        ],
      ),
    );
  }
}

class NavItem extends StatelessWidget {
  final String title;
  final Icon icon;
  final Function onTap;

  const NavItem({Key key, this.title, this.icon, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: ListTile(
            title: Text(
              title,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFF0A0E51)),
            ),
            trailing: icon),
        onTap: onTap);
  }
}

class NavModel {
  String title;
  IconData icon;

  NavModel({this.icon, this.title});
}

List<NavModel> navigationItems = [
  NavModel(title: 'MVP | Home', icon: Icons.home),
  NavModel(title: 'Real Estate', icon: Icons.error),
  NavModel(title: 'Search', icon: Icons.search),
  NavModel(title: 'Automoblie', icon: Icons.directions_car),
  NavModel(title: 'Event Center', icon: Icons.explore),
  NavModel(title: 'Account', icon: Icons.account_circle)
];

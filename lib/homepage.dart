import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:property_app/automobile.dart';
import 'package:property_app/home.dart';
import 'package:property_app/profile.dart';
import 'package:property_app/real_estate.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Page _page = Page.home;

  void _selectPage(Page page) => setState(() => _page = page);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _buildBody(),
      bottomNavigationBar: BottomNavigation(
        page: _page,
        onSelectPage: _selectPage,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF0A0E51),
        child: Icon(Icons.search),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget _buildBody() {
    return <Page, WidgetBuilder>{
      Page.home: (_) => Home(),
      Page.real_estate: (_) => RealEstate(),
      Page.automobile: (_) => Automobile(),
      Page.profile: (_) => Profile()
    }[_page](context);
  }
}

class BottomNavigation extends StatelessWidget {
  final Page page;
  final ValueChanged<Page> onSelectPage;

  Color _color(Page page) =>
      this.page == page ? Color(0xFF0A0E51) : Colors.grey;

  const BottomNavigation({Key key, this.page, this.onSelectPage})
      : super(key: key);

  static const Map<Page, IconData> icons = {
    Page.home: FontAwesomeIcons.home,
    Page.real_estate: FontAwesomeIcons.solidBuilding,
    Page.automobile: FontAwesomeIcons.carAlt,
    Page.profile: FontAwesomeIcons.user
  };

  static const Map<Page, String> names = {
    Page.home: 'home',
    Page.real_estate: 'Real Estate',
    Page.automobile: 'automobile',
    Page.profile: 'Account',
  };

  BottomNavigationBarItem _buildItem(Page page) {
    return BottomNavigationBarItem(
      icon: Icon(
        icons[page],
        color: _color(page),
      ),
      title: Text(
        names[page],
        style: TextStyle(
          color: _color(page),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: Page.values.map(_buildItem).toList(),
      onTap: (index) => onSelectPage(Page.values[index]),
    );
  }
}

enum Page { home, real_estate, automobile, profile }

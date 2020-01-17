import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('MVP Home'),
      ),
      drawer: Drawer(),
      bottomNavigationBar: BottomNavigation(),
    );
  }
}

class BottomNavigation extends StatelessWidget {
  final Page page;
  final ValueChanged<Page> onSelectPage;

  Color _color(Page page) => this.page == page ? Colors.indigo : Colors.grey;

  const BottomNavigation({Key key, this.page, this.onSelectPage})
      : super(key: key);

  static const Map<Page, IconData> icons = {
    Page.home: Icons.home,
    Page.real_estate: Icons.business,
    Page.automobile: Icons.directions_car,
    Page.profile: Icons.account_circle
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

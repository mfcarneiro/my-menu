import 'package:flutter/material.dart';

import '../../screens/category/categories_screen.dart';
import '../../screens/favorite/favorite_screen.dart';
import '../../screens/category/category_filter_screen.dart';

class DashboardScreen extends StatefulWidget {
  _DashboardScreenState createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  //* Declaring here in an static way, passing data through "widget"
  //* will not work
  //* Instead, use the initState() to handle the list initialization
  //! final List<Map<String, Object>> _navigationBottomRoutes = [
  //!   {
  //!     'page': CategoryFilterScreen(),
  //!     'title': 'Info',
  //!   },
  //!   {
  //!     'page': CategoriesScreen(),
  //!     'title': 'Categories',
  //!   },
  //!   {
  //!  -->'page': FavoriteScreen(widget.favoriteList...), <--
  //!     'title': 'Favorites',
  //!   },
  //! ];
  List<Map<String, Object>> _navigationBottomRoutes = [];
  int _selectedRouteIndex = 1;

  @override
  void initState() {
    super.initState();
    _navigationBottomRoutes = [
      {
        'page': CategoryFilterScreen(),
        'title': 'Info',
      },
      {
        'page': CategoriesScreen(),
        'title': 'Categories',
      },
      {
        'page': FavoriteScreen(),
        'title': 'Favorites',
      },
    ];
  }

  void _onNavigationBottomItemTapped(int index) {
    setState(() {
      _selectedRouteIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_navigationBottomRoutes[_selectedRouteIndex]['title']),
        centerTitle: true,
      ),
      body: _navigationBottomRoutes[_selectedRouteIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        iconSize: 25,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: Colors.red,
        selectedItemColor: Colors.white,
        onTap: _onNavigationBottomItemTapped,
        currentIndex: _selectedRouteIndex,
        selectedIconTheme: IconThemeData(color: Colors.amberAccent),
        selectedFontSize: 16,
        unselectedFontSize: 16,
        unselectedItemColor: Colors.white,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            title: Text('Info'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.category,
            ),
            title: Text('Categories'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text('Favorite'),
          )
        ],
      ),
    );
  }
}

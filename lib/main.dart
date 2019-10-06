import 'package:flutter/material.dart';

import './screens/dashboard/dashboard_screen.dart';
import './screens/category/category_meals_screen.dart';
import './screens/meal/meal_detail_screen.dart';
import './screens/category/category_filter_screen.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMenu',
      theme: ThemeData(
        primarySwatch: Colors.red,
        accentColor: Colors.redAccent,
        scaffoldBackgroundColor: Colors.amber[50],
      ),
      routes: {
        '/': (context) => DashboardScreen(),
        CategoryMealsScreen.routeName: (context) => CategoryMealsScreen(),
        MealDetailScreen.routeName: (context) => MealDetailScreen(),
        CategoryFilterScreen.routeName: (context) => CategoryFilterScreen(),
      },
      // * Triggers when no named route is reached
      //! onGenerateRoute: (routeSettings) {
      //!   return MaterialPageRoute(
      //!     builder: (context) => CategoryMealsScreen(),
      //!   );
      //! },
      // * Fallback possibility
      onUnknownRoute: (routeSettings) {
        return MaterialPageRoute(
          builder: (context) => DashboardScreen(),
        );
      },
    );
  }
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyMenu'),
      ),
      body: Center(
        child: Column(),
      ),
    );
  }
}

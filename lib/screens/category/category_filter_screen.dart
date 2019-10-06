import 'package:flutter/material.dart';

class CategoryFilterScreen extends StatefulWidget {
  static String routeName = '/category_filter';

  _CategoryFilterScreenState createState() => _CategoryFilterScreenState();
}

class _CategoryFilterScreenState extends State<CategoryFilterScreen> {
  bool _gluenFree = false;
  bool _vegetarian = false;
  bool _vegan = false;
  bool _lactoseFree = false;

  Widget _buildSwitchListTile(
      String title, String subtitle, bool switchValue, Function onChanged) {
    return SwitchListTile(
        title: Text(title),
        subtitle: Text(subtitle),
        value: switchValue,
        onChanged: onChanged);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: EdgeInsets.symmetric(
            vertical: 20,
            horizontal: 10,
          ),
          child: Text(
            'Adjust your meal preferences',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ),
        Expanded(
          child: ListView(
            children: <Widget>[
              _buildSwitchListTile(
                'Gluten-free',
                'Gluten-free meals only',
                _gluenFree,
                (newValue) {
                  setState(() {
                    _gluenFree = newValue;
                  });
                },
              ),
              _buildSwitchListTile(
                'Lactose-free',
                'Lactose-free meals only',
                _lactoseFree,
                (newValue) {
                  setState(() {
                    _lactoseFree = newValue;
                  });
                },
              ),
              _buildSwitchListTile(
                'Vegan',
                'Vegan-free meals only',
                _vegan,
                (newValue) {
                  setState(() {
                    _vegan = newValue;
                  });
                },
              ),
              _buildSwitchListTile(
                'Vegetarian',
                'Vegetarian meals only',
                _vegetarian,
                (newValue) {
                  setState(() {
                    _vegetarian = newValue;
                  });
                },
              ),
            ],
          ),
        )
      ],
    );
  }
}

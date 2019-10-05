import 'package:flutter/material.dart';

import '../../service/dummy_data.dart';

import './category_item.dart';

class CategoryList extends StatelessWidget {
  const CategoryList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView(
      padding: EdgeInsets.all(25),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 20,
        mainAxisSpacing: 20,
      ),
      children: DUMMY_CATEGORIES.map((categories) {
        return CategoryItem(
          categories.id,
          categories.title,
          categories.color,
        );
      }).toList(),
    );
  }
}

import 'package:flutter/material.dart';

import '../../service/dummy_data.dart';

import '../../widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static String routeName = '/category-meals';
  //* Avoiding the constructor and using a named route instead
  //! final String categoryId;
  //! final String categoryTitle;
  //! CategoryMealScreen({@required this.categoryId, @required this.categoryTitle});

  @override
  Widget build(BuildContext context) {
    final Map<String, String> routeArguments =
        ModalRoute.of(context).settings.arguments;
    final String categoryId = routeArguments['id'];
    final String categoryTitle = routeArguments['title'];
    final categoryMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(categoryId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Container(
        child: ListView.builder(
          itemBuilder: (context, index) {
            return MealItem(
              id: categoryMeals[index].id,
              title: categoryMeals[index].title,
              imageUrl: categoryMeals[index].imageUrl,
              duration: categoryMeals[index].duration,
              complexity: categoryMeals[index].complexity,
              affordability: categoryMeals[index].affordability,
            );
          },
          itemCount: categoryMeals.length,
        ),
      ),
    );
  }
}

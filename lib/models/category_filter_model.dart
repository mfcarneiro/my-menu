import 'package:flutter/material.dart';

class CategoryFilterModel {
  final bool gluenFree;
  final bool lactoseFree;
  final bool vegetarian;
  final bool vegan;

  CategoryFilterModel({
    @required this.gluenFree,
    @required this.lactoseFree,
    @required this.vegan,
    @required this.vegetarian,
  });
}

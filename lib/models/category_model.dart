import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String title;
  final Color color;

  const CategoryModel({
    @required this.id,
    this.title,
    this.color = Colors.redAccent,
  });
}

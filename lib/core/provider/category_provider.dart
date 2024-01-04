import 'package:boilerplate_tamplate/core/models/category.dart';
import 'package:flutter/material.dart';

class CategoryProvider with ChangeNotifier {
  List<Category> _categories = [
    Category('Sports'),
    Category('Geography'),
    Category('Science'),
    Category('History'),
    Category('Movies'),
    Category('Music'),
    Category('Literature'),
    Category('Technology'),
    Category('Art and Artists'),
    Category('Food and Cuisine'),
    Category('General Knowledge'),
    Category('Politics'),
  ];

  Category? _selectedCategory;

  List<Category> get categories => _categories;

  Category? get selectedCategory => _selectedCategory;

  void selectCategory(Category category) {
    _selectedCategory = category;
    notifyListeners();
  }
}

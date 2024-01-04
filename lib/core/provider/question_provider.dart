import 'package:flutter/material.dart';

class QuestionProvider extends ChangeNotifier {
  int _currentIndex = 0;

  int get currentIndex => _currentIndex;

  void setNextQuestion() {
    _currentIndex++;
    notifyListeners();
  }

  void selectOption(String option) {
    // You can handle the selected option as needed
    print('Selected option: $option');
  }
}

import 'package:boilerplate_tamplate/app/app_root.dart';
import 'package:boilerplate_tamplate/core/provider/category_provider.dart';
import 'package:boilerplate_tamplate/core/provider/question_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CategoryProvider()),
        ChangeNotifierProvider(create: (context) => QuestionProvider()),
      ],
      child: MyApp(),
    ),
  );
}

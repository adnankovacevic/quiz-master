import 'package:boilerplate_tamplate/core/enum/environment.dart';
import 'package:flutter/material.dart';

class EnvironmentConfig {
  final Environment flavor;
  final Color color;
  final FlavorValues values;

  EnvironmentConfig({
    required this.flavor,
    required this.color,
    required this.values,
  });
}

class FlavorValues {
  final String apiKey;
  final String baseUrl;

  FlavorValues({
    required this.apiKey,
    required this.baseUrl,
  });
}

import 'package:boilerplate_tamplate/app_root.dart';
import 'package:boilerplate_tamplate/config/environment_config.dart';
import 'package:boilerplate_tamplate/enum/environment.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EnvironmentConfig(
    flavor: Environment.production,
    color: Colors.orange,
    values: FlavorValues(
      apiKey: 'your_production_api_key',
      baseUrl: 'https://api.example.com',
    ),
  );

  runApp(const MyApp());
}

import 'package:boilerplate_tamplate/app_root.dart';
import 'package:boilerplate_tamplate/config/environment_config.dart';
import 'package:boilerplate_tamplate/enum/environment.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  EnvironmentConfig(
    flavor: Environment.development,
    color: Colors.orange,
    values: FlavorValues(
      apiKey: 'your_development_api_key',
      baseUrl: 'https://dev.example.com',
    ),
  );

  runApp(const MyApp());
}

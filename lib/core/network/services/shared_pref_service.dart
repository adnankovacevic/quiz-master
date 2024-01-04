import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  static SharedPreferences? _preferences;

  // Initialize SharedPreferences
  static Future<void> init() async {
    _preferences = await SharedPreferences.getInstance();
  }

  // Generic method to save a setting
  static Future<void> save<T>(String key, T value) async {
    if (_preferences == null) {
      await init();
    }

    if (value is String) {
      await _preferences!.setString(key, value);
    } else if (value is bool) {
      await _preferences!.setBool(key, value);
    } else if (value is int) {
      await _preferences!.setInt(key, value);
    } else if (value is double) {
      await _preferences!.setDouble(key, value);
    } else {
      throw Exception("Unsupported data type");
    }
  }

  // Generic method to retrieve a setting
  static T? get<T>(String key) {
    if (_preferences == null) {
      throw Exception("SharedPreferences not initialized");
    }

    if (T == String) {
      return _preferences!.getString(key) as T?;
    } else if (T == bool) {
      return _preferences!.getBool(key) as T?;
    } else if (T == int) {
      return _preferences!.getInt(key) as T?;
    } else if (T == double) {
      return _preferences!.getDouble(key) as T?;
    } else {
      throw Exception("Unsupported data type");
    }
  }

  // Clear a setting
  static Future<void> clear(String key) async {
    if (_preferences == null) {
      await init();
    }

    await _preferences!.remove(key);
  }

  // Clear all settings
  static Future<void> clearAll() async {
    if (_preferences == null) {
      await init();
    }

    await _preferences!.clear();
  }
}
// Save a string setting
// await SharedPrefsService.saveString('username', 'john_doe');

// Retrieve a string setting
// String? username = await SharedPrefsService.getString('username');
// print('Username: $username');

// Clear a setting
// await SharedPrefsService.clear('username');

// Clear all settings
// await SharedPrefsService.clearAll();
import 'package:flutter/material.dart';

class NavigationService {
  NavigationService(this.navigatorKey);

  final GlobalKey<NavigatorState> navigatorKey;

  Future<dynamic> navigateToWidget(Widget screen,
      {bool removeAllRoutes = false}) {
    if (removeAllRoutes) {
      return navigatorKey.currentState!.pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => screen),
        (_) => false,
      );
    } else {
      return navigatorKey.currentState!
          .push(MaterialPageRoute(builder: (context) => screen));
    }
  }

  void navigateBack() {
    navigatorKey.currentState!.pop();
  }
}

import 'package:boilerplate_tamplate/core/config/custom_themes.dart';
import 'package:flutter/material.dart';

class LinearGradientBackground extends StatelessWidget {
  const LinearGradientBackground({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            AppColors.primaryColor.withOpacity(0.2),
            AppColors.primaryColor.withOpacity(0.4),
            AppColors.primaryColor.withOpacity(0.6),
            AppColors.primaryColor.withOpacity(0.8),
          ],
        ),
      ),
      child: child,
    );
  }
}

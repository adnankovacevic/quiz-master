import 'package:boilerplate_tamplate/core/config/custom_themes.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? rightActionPressed;
  final IconData? rightActionIcon;
  final String title;
  final List<Widget>? actions;

  const CustomAppBar({
    Key? key,
    this.rightActionPressed,
    this.rightActionIcon,
    required this.title,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      // elevation: 3,
      child: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(rightActionIcon, color: AppColors.backgroundColor),
          onPressed: rightActionPressed,
        ),
        title: Text(title, style: AppTextStyle.poppins18White500),
        actions: actions,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}

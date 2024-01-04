import 'package:boilerplate_tamplate/core/config/custom_themes.dart';
import 'package:flutter/material.dart';

class CustomButton extends ElevatedButton {
  const CustomButton({
    Key? key,
    required VoidCallback? onPressed,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool autofocus = false,
    bool enabled = true,
    Clip clipBehavior = Clip.none,
    required Widget? child,
  }) : super(
          key: key,
          onPressed: onPressed,
          onLongPress: onLongPress,
          onHover: onHover,
          onFocusChange: onFocusChange,
          style: style,
          focusNode: focusNode,
          autofocus: autofocus,
          clipBehavior: clipBehavior,
          child: child,
        );

  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: (style ?? const ButtonStyle()).copyWith(
            backgroundColor: enabled
                ? MaterialStateProperty.all<Color>(AppColors.secondaryColor)
                : MaterialStateProperty.all<Color>(AppColors.backgroundColor)),
        child: child);
  }
}

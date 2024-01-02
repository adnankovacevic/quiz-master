import 'package:flutter/material.dart';

extension WidgetExtensions on Widget {
  Future<T?> openDialog<T>({
    BuildContext? context,
    bool? barrierDismissible,
    Color? barrierColor,
  }) {
    return showDialog<T>(
      barrierDismissible: barrierDismissible ?? true,
      barrierColor: barrierColor ?? Colors.black45,
      context: context!,
      builder: (BuildContext context) {
        return this;
      },
    );
  }

  Future<T?> openSimpleDialog<T>({
    BuildContext? context,
    Color? barrierColor,
    bool? barrierDismissible,
    EdgeInsetsGeometry? padding,
  }) {
    return Dialog(
      insetPadding: const EdgeInsets.all(24),
      child: Padding(
        padding: padding ?? const EdgeInsets.all(24),
        child: this,
      ),
    ).openDialog<T>(
        context: context,
        barrierColor: barrierColor,
        barrierDismissible: barrierDismissible);
  }

  Future<T?> openBottomSheet<T>({
    BuildContext? context,
    Color? barrierColor,
    Color? backgroundColor,
    bool? barrierDismissible,
    ShapeBorder? shape,
    BoxConstraints? constraints,
    bool? isScrollControlled,
    bool? useRootNavigator,
    bool? isDismissible,
    bool? enableDrag,
  }) {
    return showModalBottomSheet<T>(
      context: context!,
      barrierColor: barrierColor,
      backgroundColor: backgroundColor,
      isScrollControlled: isScrollControlled ?? false,
      useRootNavigator: useRootNavigator ?? false,
      isDismissible: isDismissible ?? true,
      enableDrag: enableDrag ?? true,
      shape: shape ??
          const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(24),
            ),
          ),
      constraints: constraints,
      builder: (BuildContext context) {
        return this;
      },
    );
  }
}

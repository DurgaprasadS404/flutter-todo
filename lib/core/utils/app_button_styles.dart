import 'package:flutter/material.dart';
import 'package:flutter_template/core/utils/app_colors.dart';
import 'package:flutter_template/core/utils/constants.dart';

class AppButtonStyles {
  static ButtonStyle outlinedButtonStyle = OutlinedButton.styleFrom(
    shape: buttonBorder,
  ).copyWith(
    side: WidgetStateProperty.resolveWith<BorderSide>(
      (Set<WidgetState> states) {
        return const BorderSide(
          width: outlinedButtonBorderSize,
          color: AppColors.primaryGreen,
        ); // Defer to the widget's default.
      },
    ),
  );

  static ButtonStyle textButtonStyle =
      TextButton.styleFrom(shape: buttonBorder);

  static ButtonStyle elevatedButtonStyle = TextButton.styleFrom(
    shape: buttonBorder,
  ).copyWith(
    backgroundColor: WidgetStateProperty.resolveWith<Color>(
      (Set<WidgetState> states) {
        if (states.contains(WidgetState.disabled)) {
          return AppColors.primaryGreen.withAlpha(128);
        }
        return AppColors.primaryGreen;
      },
    ),
  );
}

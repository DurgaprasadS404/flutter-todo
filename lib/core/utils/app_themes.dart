import 'package:flutter/material.dart';
import 'package:flutter_template/core/utils/app_button_styles.dart';
import 'package:flutter_template/core/utils/app_colors.dart';
import 'package:flutter_template/core/utils/app_text_styles.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static ThemeData lightThemeData = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColors.primaryGreen,
    fontFamily: GoogleFonts.notoSans().fontFamily,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primaryGreen,
      secondary: AppColors.secondaryBrown,
    ),
    textTheme: const TextTheme(
      headlineSmall: AppTextStyles.headlineSmallTextStyle,
      labelLarge: AppTextStyles.labelLargeTextStyle,
      titleLarge: AppTextStyles.titleLargeTextStyle,
      titleMedium: AppTextStyles.titleMediumTextStyle,
      bodyLarge: AppTextStyles.bodyLargeTextStyle,
      bodyMedium: AppTextStyles.bodyMediumTextStyle,
    ),
    textButtonTheme:
        TextButtonThemeData(style: AppButtonStyles.textButtonStyle),
    elevatedButtonTheme:
        ElevatedButtonThemeData(style: AppButtonStyles.elevatedButtonStyle),
    outlinedButtonTheme:
        OutlinedButtonThemeData(style: AppButtonStyles.outlinedButtonStyle),
  );
}

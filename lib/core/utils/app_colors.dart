import 'package:flutter/material.dart';

class AppColors {
  // Primary colors
  static const Color primaryGreen = Color(0xFF146133);
  static const Color secondaryBrown = Color(0xFF683C13);

  // Neutral colors
  static const Color neutralBlack600 = Color(0xFF070D09);
  static const Color neutralBlack400 = Color(0xFF585858);
  static const Color neutralDark = Color(0xFF373232);
  static const Color neutralGrey = Color(0xFF535870);
  static const Color neutralLightGrey = Color(0xFFEBECF2);

  //Misc
  static const Color statusBarColor = Color(0xFF022E0E);
  static const Color languageSelectorShadowColor = Color(0x00000012);
  static const Color appBarBottomDividerColor = Color(0xFFE5E7EB);
  static const Color homeWelcomeBannerBackgroundColor = Color(0xFFFFFAF0);

  // Accent colors
  static const Color accentRed = Color(0xFFEC4544);
  static const Color accentGreen = Color(0xFF1FB04B);
  static const Color accentYellow = Color(0xFFFFC24C);

  // Color swatches
  static const MaterialColor primaryGreenSwatch = MaterialColor(
    0xFF146133, // Should be the color used for the value 500
    <int, Color>{
      50: Color(0xFFDEE9E2),
      100: Color(0xFFC4D8CC),
      200: Color(0xFFA1C0AD),
      300: Color(0xFF72A085),
      400: Color(0xFF43815C),
      500: Color(0xFF146133),
    },
  );

  static const MaterialColor secondaryBrownSwatch = MaterialColor(
    0xFF683C13, // Should be the color used for the value 500
    <int, Color>{
      50: Color(0xFFFFFAF0),
      100: Color(0xFFDBD0C6),
      200: Color(0xFFC3B1A1),
      300: Color(0xFFA48A71),
      400: Color(0xFF866342),
      500: Color(0xFF683C13),
    },
  );
}

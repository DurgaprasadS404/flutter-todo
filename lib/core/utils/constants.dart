import 'package:flutter/material.dart';
import 'package:flutter_template/core/utils/app_colors.dart';

const String countryCode = "91";

const int resendOtpCoolDownInSeconds = 30;

// Sizes
const double outlinedButtonBorderSize = 1.5;
const double languageSelectionItemSize = 80.0;

// Misc
const RoundedRectangleBorder buttonBorder = RoundedRectangleBorder(
  borderRadius: BorderRadius.all(
    Radius.circular(8),
  ),
);

const BoxShadow languageSelectorBoxShadow = BoxShadow(
  color: AppColors.languageSelectorShadowColor,
  offset: Offset(2.0, 0.0),
  blurRadius: 17.0,
  spreadRadius: 0.0,
);

// receiveTimeout
const Duration receiveTimeout = Duration(milliseconds: 15000);

// connectTimeout
const Duration connectionTimeout = Duration(milliseconds: 15000);

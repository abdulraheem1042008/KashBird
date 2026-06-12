import 'package:eClassify/utils/ui_utils.dart';
import 'package:flutter/material.dart';

/// =======================================================
/// KASHBIRD BRAND COLORS
/// =======================================================
/// Green  : #15803D
/// Red    : #DC2626
/// Navy   : #111827
/// White  : #F5F5F5
/// =======================================================

/// Light Theme Colors
const Color primaryColor_ = Color(0xFFF5F5F5);
const Color secondaryColor_ = Color(0xFFFFFFFF);

/// Main Brand Green
const Color territoryColor_ = Color(0xFF15803D);

/// Accent Brand Red
const Color forthColor_ = Color(0xFFDC2626);

const Color _backgroundColor = primaryColor_;

/// Text Colors
const Color textDarkColor = Color(0xFF111827);

Color lightTextColor = const Color(0xFF111827).withValues(alpha: 0.55);

/// Borders
Color widgetsBorderColorLight = const Color(0xFFE5E7EB).withValues(alpha: 0.80);

/// =======================================================
/// DARK THEME
/// =======================================================

Color primaryColorDark = const Color(0xFF111827);

Color secondaryColorDark = const Color(0xFF1F2937);

const Color territoryColorDark = Color(0xFF15803D);

Color deactivateColorLight = const Color(0xFF6B7280);

const Color forthColorDark = Color(0xFFDC2626);

Color backgroundColorDark = primaryColorDark;

const Color textColorDarkTheme = Color(0xFFF5F5F5);

Color lightTextColorDarkTheme = const Color(0xFFF5F5F5).withValues(alpha: 0.55);

Color widgetsBorderColorDark = const Color(0xFFF5F5F5).withValues(alpha: 0.12);

/// Extra Utility Color
Color orangeColor = const Color(0xFFDC2626);

/// =======================================================
/// MESSAGES
/// =======================================================

const Color errorMessageColor = Color(0xFFDC2626);

const Color successMessageColor = Color(0xFF15803D);

const Color warningMessageColor = Color(0xFFC2AF6F);

/// =======================================================
/// STATUS BUTTONS
/// =======================================================

const Color pendingButtonColor = Color(0xFF111827);

const Color soldOutButtonColor = Color(0xFFC2AF6F);

const Color deactivateButtonColor = Color(0xFFDC2626);

const Color activateButtonColor = Color(0xFF15803D);

/// =======================================================
/// BUTTON TEXT
/// =======================================================

const Color buttonTextColor = Colors.white;

///Advance
//Theme settings
extension ColorPrefs on ColorScheme {
  Color get primaryColor => _getColor(
    brightness,
    lightColor: primaryColor_,
    darkColor: primaryColorDark,
  );

  Color get secondaryColor => _getColor(
    brightness,
    lightColor: secondaryColor_,
    darkColor: secondaryColorDark,
  );

  Color get secondaryDetailsColor => _getColor(
    brightness,
    lightColor: secondaryColor_,
    darkColor: primaryColorDark,
  );

  Color get territoryColor => _getColor(
    brightness,
    lightColor: territoryColor_,
    darkColor: territoryColorDark,
  );

  Color get deactivateColor => _getColor(
    brightness,
    lightColor: deactivateColorLight,
    darkColor: deactivateColorLight,
  );

  Color get forthColor =>
      _getColor(brightness, lightColor: forthColor_, darkColor: forthColorDark);

  Color get backgroundColor => _getColor(
    brightness,
    lightColor: _backgroundColor,
    darkColor: backgroundColorDark,
  );

  Color get buttonColor => buttonTextColor;

  Color get textColorDark => _getColor(
    brightness,
    lightColor: textDarkColor,
    darkColor: textColorDarkTheme,
  );

  Color get textDefaultColor => _getColor(
    brightness,
    lightColor: textDarkColor,
    darkColor: textColorDarkTheme,
  );

  Color get textLightColor => _getColor(
    brightness,
    lightColor: lightTextColor,
    darkColor: lightTextColorDarkTheme,
  );

  Color get borderColor => _getColor(
    brightness,
    lightColor: widgetsBorderColorLight,
    darkColor: secondaryColorDark.withValues(alpha: 0.2),
  );

  Color get inverseThemeColor => _getColor(
    brightness,
    lightColor: secondaryColorDark,
    darkColor: secondaryColor_,
  );

  Color textAutoAdapt(Color backgroundColor) =>
      UiUtils.getAdaptiveTextColor(backgroundColor);

  Color get blackColor => Colors.black;

  Color get shimmerBaseColor => brightness == Brightness.light
      ? const Color.fromARGB(255, 225, 225, 225)
      : const Color.fromARGB(255, 150, 150, 150);

  Color get shimmerHighlightColor => brightness == Brightness.light
      ? Colors.grey.shade100
      : Colors.grey.shade300;

  Color get shimmerContentColor => brightness == Brightness.light
      ? Colors.white.withValues(alpha: 0.85)
      : Colors.white.withValues(alpha: 0.7);
}

// 10pt: Smaller
// 12pt: Small
// 16pt: Large
// 18pt: Larger
// 24pt: Extra large
extension TextThemeForFont on TextTheme {
  Font get font => Font();
}

/// i made this to access font easily from theme like, Theme.of(context).textTheme.font.small
/// So what is difference here?? in Theme.of(context).textTheme.small and Theme.of(context).textTheme.font.small
/// We use separate class because There will be an execution on BuildContext in [Utils/Extensions/lib] folder so further explanation is there. you can check
class Font {
  ///10
  double get smaller => 10;

  ///12
  double get small => 12;

  ///14
  double get normal => 14;

  ///16
  double get large => 16;

  ///18
  double get larger => 18;

  ///24
  double get extraLarge => 24;

  ///28
  double get xxLarge => 28;
}

Color _getColor(
  Brightness brightness, {
  required Color lightColor,
  required Color darkColor,
}) {
  if (Brightness.light == brightness) {
    return lightColor;
  } else {
    return darkColor;
  }
}

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SunshineTheme {
  static ThemeData get theme {
    final themeData = ThemeData.light();
    final textTheme = themeData.textTheme;

    return ThemeData.light().copyWith(
      primaryColor: purpleColor,
      scaffoldBackgroundColor: Colors.white,
      brightness: Brightness.light,
      appBarTheme: AppBarTheme(systemOverlayStyle: SystemUiOverlayStyle.light),
      textSelectionTheme: TextSelectionThemeData(
        selectionColor: indigo100Color,
        cursorColor: purpleColor,
      ),
      toggleableActiveColor: purpleColor,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: Colors.cyan[300],
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: backgroundColor,
        contentTextStyle: CustomTextTheme.robotoRegular4,
        actionTextColor: purpleColor,
      ),
      textTheme: textTheme.copyWith(button: CustomTextTheme.robotoBold2),
      colorScheme: ColorScheme.fromSwatch().copyWith(secondary: disableColor),
    );
  }
}

///폰트 스타일이 같고 color 가 다를 경우 copyWith 으로 color 지정해서 사용
class CustomTextTheme extends TextTheme {
  static TextStyle get robotoBold32 => const TextStyle(
      fontFamily: 'MPLUS1',
      fontSize: 32,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w700);

  static TextStyle get robotoBold1 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 24,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w700);

  static TextStyle get robotoBold20 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 20,
      height: 1.09,
      color: grey800Color,
      fontWeight: FontWeight.w700);

  static TextStyle get robotoBold2 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      height: 1.13,
      color: grey800Color,
      fontWeight: FontWeight.w700);

  static TextStyle get robotoBold11 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 11,
      height: 1.13,
      color: grey800Color,
      fontWeight: FontWeight.w700);

  static TextStyle get robotoBold14 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      height: 1.13,
      color: grey800Color,
      fontWeight: FontWeight.w700);

  static TextStyle get robotoBold15 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 15,
      height: 1.13,
      color: grey800Color,
      fontWeight: FontWeight.w700);

  static TextStyle get robotoBold5 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      height: 1.17,
      color: grey800Color,
      fontWeight: FontWeight.w700);

  static TextStyle get robotoRegular2 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      height: 1.5,
      color: grey800Color,
      fontWeight: FontWeight.w500);

  static TextStyle get robotoRegular3 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 16,
      height: 1.13,
      color: grey800Color,
      fontWeight: FontWeight.w500);

  static TextStyle get robotoRegular14 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 14,
      height: 1.17,
      color: grey800Color,
      fontWeight: FontWeight.w500);

  static TextStyle get robotoRegular4 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      height: 1.17,
      color: grey800Color,
      fontWeight: FontWeight.w500);

  static TextStyle get robotoRegular4White => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      height: 1.17,
      color: Colors.white,
      fontWeight: FontWeight.w500);

  static TextStyle get robotoRegular5 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 10,
      height: 1.17,
      color: grey800Color,
      fontWeight: FontWeight.w500);

  static TextStyle get novelText => const TextStyle(
      fontFamily: 'Literata',
      fontSize: 18,
      height: 1.45,
      color: grey800Color,
      fontWeight: FontWeight.w500);

  static TextStyle get robotoThin12 => const TextStyle(
      fontFamily: 'Poppins',
      fontSize: 12,
      height: 1.17,
      color: grey800Color,
      fontWeight: FontWeight.w300);

  static TextStyle get hintText => robotoRegular3.copyWith(color: disableColor);

  static TextStyle get hintText2 =>
      robotoRegular14.copyWith(color: grey600Color);

  static TextStyle get footerPoppinsRegular4 =>
      robotoRegular4.copyWith(fontWeight: FontWeight.w300);
}

const globalFontList = [
  'Poppins',
  'Roboto',
  'RobotoMono',
  'PermanentMarker',
  'Monoton'
];

//color
const purpleColor = const Color(0xFF6330CD);
const lightRedColor = const Color(0xCCE94A48);
const tintPinkColor = const Color(0xFFD34462);
const redColor = const Color(0xFFE94A48);
const indigoColor = const Color(0xFF202653);
const indigo200Color = const Color(0xFF525A97);
const indigo100Color = const Color(0xFFC0C5E9);
const whiteColor = Colors.white;
const blackColor = const Color(0xFF161616);

const grey900Color = const Color(0xFF4B5366);
const grey800Color = const Color(0xFF2F3342);
const grey600Color = const Color(0xFF969FA8);
const grey400Color = const Color(0xFFCCD3DA);
const grey200Color = const Color(0xFFEAF0F5);
const grey100Color = const Color(0xFFF8FAFD);

const primaryColorVague = const Color(0x666330CD);
const primaryColorVague2 = const Color(0xFFF1EAFB);
const frontAccentColor = const Color(0xFFD21776);
const frontAccentColor2 = const Color(0xFFEEAB39);
const actColor = const Color(0xFF212121);
const inActColor = const Color(0xFF8E8E93);
const disableColor = const Color(0xFFC7C7CC);
const backgroundColor = const Color(0xFFE5E5EA);
const backgroundLightColor = const Color(0xFFFCFCFD);
const actColor60 = const Color(0x99212121);
const shadowColor = const Color(0x808E8E93);
const disableLightColor = const Color(0xFFF2F2F7);
const joaraBooksHighlightColor = const Color(0xFFD21776);
const bannerIndicatorActive = const Color(0xFF21459E);
const tabActColor = const Color(0xFF2B2B2B);
const tabInActColor = const Color(0xFF8E8E93);
const paleGreyColor = const Color(0x4D969FA8);

const globalFontColorList = [
  whiteColor,
  blackColor,
  purpleColor,
  lightRedColor,
  tintPinkColor,
  redColor,
  indigoColor,
  indigo200Color,
  indigo100Color,
  grey800Color,
  grey600Color,
  grey400Color,
  grey200Color,
  grey100Color
];

final kIsWebMobile = kIsWeb &&
    (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android);
final kIsMobile = (defaultTargetPlatform == TargetPlatform.iOS ||
    defaultTargetPlatform == TargetPlatform.android);

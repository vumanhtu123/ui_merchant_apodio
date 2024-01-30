import 'package:flutter/material.dart';

class AppStyles {
  TextStyle textWhite({double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        color: Colors.white,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  TextStyle textHint({double? fontSize, FontWeight? fontWeight, Color? color}) {
    return TextStyle(
        color: color,
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  TextStyle textBlue1({double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        color: const Color(0xFF325EA5),
        fontSize: fontSize ?? 14,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  TextStyle textBlueDark(
      {double? fontSize, FontWeight? fontWeight, FontStyle? fontStyle}) {
    return TextStyle(
      color: const Color(0xFF213660),
      fontSize: fontSize ?? 11,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }

  TextStyle textBlueDark2({double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        color: const Color(0xFF213660),
        fontSize: fontSize ?? 11,
        fontWeight: fontWeight ?? FontWeight.bold);
  }

  TextStyle textRed({double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        color: const Color(0xFFCB473E),
        fontSize: fontSize ?? 11,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  TextStyle textBlack({double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        color: const Color(0xFF000000),
        fontSize: fontSize ?? 11,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  TextStyle textRedNews({double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        color: const Color(0xFFCB473E),
        fontSize: fontSize ?? 10,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  TextStyle textBlackNews({double? fontSize, FontWeight? fontWeight}) {
    return TextStyle(
        color: const Color(0xFF000000),
        fontSize: fontSize ?? 10,
        fontWeight: fontWeight ?? FontWeight.w400);
  }

  TextStyle textWhite2(
      {Widget? icon, double? fontSize, FontWeight? fontWeight, Color? color}) {
    return TextStyle(
      color: color ?? Colors.white,
      fontSize: fontSize ?? 14,
      fontWeight: fontWeight ?? FontWeight.w400,
    );
  }
}

final appStyles = AppStyles();

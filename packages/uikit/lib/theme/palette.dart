// Flutter imports:
import 'package:flutter/material.dart';

class Palette {
  static const int _whiteValue = 0xFFFFFFFF;
  static const int _blackValue = 0xFF000000;
  static const int _grayValue = 0xFFE2E2E2;
  static const int _redValue = 0xFFE40C00;
  static const int _yellowValue = 0xFFD88F00;
  static const int _greenValue = 0xFF00AE1A;
  static const int _blueValue = 0xFF004271;
  static const int _purpleValue = 0xFF9225FF;

  /// Base colors
  static const MaterialColor base = MaterialColor(
    _whiteValue,
    <int, Color>{
      15: Color(_whiteValue),
      25: Color(0x99FFFFFF),
      50: Color(0x1AFFFFFF),
      100: Color(0x1A4B4F53),
      500: Color(_blackValue),
      600: Color(0x99000000),
      700: Color(0x00000000),
    },
  );

  /// Gray palette
  static const MaterialColor gray = MaterialColor(
    _grayValue,
    <int, Color>{
      15: Color(0xFFEFF2F5),
      25: Color(0xFFDEDFE1),
      50: Color(0xFFCDCED1),
      100: Color(0xFFB1B2B7),
      200: Color(0xFF9799A0),
      300: Color(0xFF767981),
      400: Color(0xFF515560),
      500: Color(_grayValue),
      600: Color(0xFFE8E8E8),
      700: Color(0xFF31333A),
      800: Color(0xFF25272C),
      900: Color(0xFF1D1F23),
      950: Color(0xFF151619),
    },
  );

  /// Red palette
  static const MaterialColor red = MaterialColor(
    _redValue,
    <int, Color>{
      15: Color(0xFFFFF1F1),
      25: Color(0xFFFEDDDD),
      50: Color(0xFFFECBCA),
      100: Color(0xFFFDAEAE),
      200: Color(0xFFFC9292),
      300: Color(0xFFFB7070),
      400: Color(0xFFFA4A4A),
      500: Color(_redValue),
      600: Color(0xFFB43535),
      700: Color(0xFF962C2C),
      800: Color(0xFF6C2020),
      900: Color(0xFF4B1616),
      950: Color(0xFF320F0F),
    },
  );

  /// Yellow palette
  static const MaterialColor yellow = MaterialColor(
    _yellowValue,
    <int, Color>{
      15: Color(0xFFFEF8EB),
      25: Color(0xFFFDEDCF),
      50: Color(0xFFFCE4B5),
      100: Color(0xFFFBD58C),
      200: Color(0xFFF9C766),
      300: Color(0xFFF7B636),
      400: Color(0xFFF5A200),
      500: Color(_yellowValue),
      600: Color(0xFFB07500),
      700: Color(0xFF936100),
      800: Color(0xFF694600),
      900: Color(0xFF4A3100),
      950: Color(0xFF312000),
    },
  );

  /// Green palette
  static const MaterialColor green = MaterialColor(
    _greenValue,
    <int, Color>{
      15: Color(0xFFEDFAF3),
      25: Color(0xFFD4F2E1),
      50: Color(0xFFBDEBD2),
      100: Color(0xFF98E0B9),
      200: Color(0xFF76D6A1),
      300: Color(0xFF4BC984),
      400: Color(0xFF1BBB63),
      500: Color(_greenValue),
      600: Color(0xFF138747),
      700: Color(0xFF10703B),
      800: Color(0xFF0C502B),
      900: Color(0xFF08381E),
      950: Color(0xFF052514),
    },
  );

  /// Blue palette
  static const MaterialColor blue = MaterialColor(
    _blueValue,
    <int, Color>{
      15: Color(0xFFEDF2FF),
      25: Color(0xFFD4E1FF),
      50: Color(0xFFBED1FF),
      100: Color(0xFF9AB8FF),
      200: Color(0xFF79A1FF),
      300: Color(0xFF4E83FF),
      400: Color(0xFF1F62FF),
      500: Color(_blueValue),
      600: Color(0xFF005BA3),
      700: Color(0xFF133B99),
      800: Color(0xFF0D2A6E),
      900: Color(0xFF091D4D),
      950: Color(0xFF061433),
    },
  );

  /// Purple palette
  static const MaterialColor purple = MaterialColor(
    _purpleValue,
    <int, Color>{
      15: Color(0xFFF6EEFF),
      25: Color(0xFFEAD6FF),
      50: Color(0xFFDFC0FF),
      100: Color(0xFFCE9DFF),
      200: Color(0xFFBE7CFF),
      300: Color(0xFFA953FF),
      400: Color(0xFF9225FF),
      500: Color(_purpleValue),
      600: Color(0xFF691BB8),
      700: Color(0xFF581699),
      800: Color(0xFF3F106E),
      900: Color(0xFF2C0B4D),
      950: Color(0xFF1D0733),
    },
  );
}

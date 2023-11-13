import 'package:flutter/material.dart';

class CustomTextTheme {
  static const headlineLarge = TextStyle(fontFamily: 'Kalam', fontSize: 50);

  static const headlineSmall = TextStyle(fontFamily: 'Kalam', fontSize: 30);

  static const titleLarge = TextStyle(fontFamily: 'Kalam', fontSize: 33);

  static const titleSmall = TextStyle(fontFamily: 'Kalam', fontSize: 23);

  static const displayLarge = TextStyle(
    fontFamily: 'Kalam',
    fontSize: 25,
    fontWeight: FontWeight.bold,
  );

  static const displaySmall = TextStyle(
    fontFamily: 'Kalam',
    fontSize: 18,
    fontWeight: FontWeight.bold,
  );

  static const bodyLarge = TextStyle(fontFamily: 'Kalam', fontSize: 24);

  static const bodyMedium = TextStyle(fontFamily: 'Kalam', fontSize: 18.5);

  static const bodySmall = TextStyle(fontFamily: 'Kalam', fontSize: 17);

  static const oeleTitleLarge = TextStyle(
    fontFamily: 'Kalam',
    fontSize: 23,
    fontWeight: FontWeight.bold,
  );

  static const oeleTitleSmall = TextStyle(
    fontFamily: 'Kalam',
    fontSize: 15.5,
    fontWeight: FontWeight.bold,
  );

  static const oeleLarge = TextStyle(fontFamily: 'Kalam', fontSize: 21);

  static const oeleSmall = TextStyle(fontFamily: 'Kalam', fontSize: 15.2);

  static const labelLarge = TextStyle(
    fontFamily: 'Kalam',
    fontSize: 18,
  );

  static const labelSmall = TextStyle(fontFamily: 'Kalam', fontSize: 14);

  static const labelSmallLocation =
      TextStyle(fontFamily: 'Kalam', fontSize: 14);

  static const TextStyle mobileMenu = TextStyle(
    fontFamily: 'Kalam',
    color: Colors.white,
    fontSize: 20,
    letterSpacing: 2,
  );

  static const TextStyle infoTextTitle = TextStyle(
    fontFamily: 'Kalam',
    color: Color(0xFF90A4AE),
    fontSize: 16,
  );

  static const TextStyle infoText = TextStyle(
    fontFamily: 'Kalam',
    color: Color(0xFFCFD8DC),
    fontSize: 16,
  );

  static TextStyle getMenuTextStyle(List isHovering, int index) {
    return TextStyle(
      fontFamily: 'Kalam',
      fontSize: 22,
      color: isHovering[index] ? Colors.white : Colors.white.withOpacity(0.8),
      letterSpacing: 2,
    );
  }
}

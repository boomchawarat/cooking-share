import 'package:flutter/material.dart';

import 'app_colors.dart';

final ThemeData appThemeData = ThemeData(
  primaryColor: primaryColor,
  accentColor: accentColor,
  splashColor: accentColor,
  highlightColor: primaryColor,
  fontFamily: 'Georgia',
  textTheme: TextTheme(
    headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
  ),
);
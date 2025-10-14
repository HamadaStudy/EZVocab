// app_styles.dart
import 'package:ezvocab/core/theme/size_config.dart';
import 'package:flutter/material.dart';

class AppStyles {
  // static const Color primaryColor = Color(0xFF296e48);
  // static const Color primaryColor = Color.fromARGB(255, 39, 105, 72);
  // static const Color backgroundColor = Color.fromARGB(255, 49, 176, 132);

  static final headingTextStyle = TextStyle(
    fontSize: SizeConfig.getProportionateFontSize(36),
    color: Colors.black,
    fontWeight: FontWeight.w700,
    fontFamily: 'Madimi One',
  );
  static final titleTextStyle = TextStyle(
    fontSize: SizeConfig.getProportionateFontSize(24),
    color: Colors.black,
    fontWeight: FontWeight.w500,
    fontFamily: 'Madimi One',
  );
  static final normalTextStyle = TextStyle(
    fontSize: SizeConfig.getProportionateFontSize(18),
    color: Colors.black,
    fontWeight: FontWeight.w300,
    fontFamily: 'Madimi One',
  );
}

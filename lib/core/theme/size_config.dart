import 'package:flutter/material.dart';

class SizeConfig {
  static late double screenHeight;
  static late double screenWidth;
  
  // デザイン基準サイズ（iPhone 11 Pro相当）
  static const double designHeight = 812.0;
  static const double designWidth = 375.0;

  static void init(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    screenHeight = mediaQuery.size.height;
    screenWidth = mediaQuery.size.width;
  }

  // 高さの比率計算（レイアウト用）
  static double getProportionateHeight(double height) {
    return (height / designHeight) * screenHeight;
  }

  // 幅の比率計算（レイアウト用）
  static double getProportionateWidth(double width) {
    return (width / designWidth) * screenWidth;
  }

  // フォントサイズ計算（テキスト用、最小値保証付き）
  static double getProportionateFontSize(double fontSize) {
    final scaledSize = (fontSize / designWidth) * screenWidth;
    // 最小フォントサイズを元のサイズの70%に設定
    return scaledSize < fontSize * 0.7 ? fontSize * 0.7 : scaledSize;
  }
}
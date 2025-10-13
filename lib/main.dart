import 'package:ezvocab/core/theme/size_config.dart';
import 'package:ezvocab/features/splash_screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return MaterialApp(
      title: 'EZVocab',
      debugShowCheckedModeBanner: false,
      home: const SplashScreen(),
    );
  }
}

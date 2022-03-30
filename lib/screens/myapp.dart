import 'package:flutter/material.dart';
import 'package:tickati/screens/splashScreen.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen1(),
      debugShowCheckedModeBanner: false,
    );
  }
}

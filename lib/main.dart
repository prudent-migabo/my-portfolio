import 'package:flutter/material.dart';
import 'home_page.dart';
import 'theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Prudent MIGABO',
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.darkTheme,
      home: const HomePage(),
    );
  }
}


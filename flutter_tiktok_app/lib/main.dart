import 'package:flutter/material.dart';
import 'package:flutter_tiktok_app/tab/tabs.dart';
import 'package:flutter_tiktok_app/theme/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          labelStyle: TextStyle(color: white),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: themeColor),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        useMaterial3: true,
      ),
      home: const Tabs(),
    );
  }
}


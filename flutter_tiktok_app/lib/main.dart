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
        colorScheme: ColorScheme.fromSeed(seedColor: themeColor),
        tabBarTheme: const TabBarTheme(dividerColor: Colors.transparent),
        useMaterial3: true,
      ),
      home: const Tabs(),
    );
  }
}

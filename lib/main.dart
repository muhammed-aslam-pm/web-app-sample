import 'package:flutter/material.dart';
import 'package:web_app_sample/utils/app_colors.dart';
import 'package:web_app_sample/view/home_page.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: const HomePage(),
    );
  }
}

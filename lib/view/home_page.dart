import 'package:flutter/material.dart';
import 'package:web_app_sample/utils/constants.dart';
import 'package:web_app_sample/widgets/container1.dart';
import 'package:web_app_sample/widgets/nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.sizeOf(context).width;
    h = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            color: Colors.white,
            child: Column(
              children: [NavBar(), Container1()],
            ),
          ),
        ),
      ),
    );
  }
}

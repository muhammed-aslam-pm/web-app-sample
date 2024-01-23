import 'package:flutter/material.dart';
import 'package:web_app_sample/utils/constants.dart';
import 'package:web_app_sample/widgets/Container4.dart';
import 'package:web_app_sample/widgets/container1.dart';
import 'package:web_app_sample/widgets/container2.dart';
import 'package:web_app_sample/widgets/container3.dart';
import 'package:web_app_sample/widgets/container5.dart';
import 'package:web_app_sample/widgets/container6.dart';
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
            child: const Column(
              children: [
                NavBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container1(),
                ),
                Container2(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container3(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container4(),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Container5(),
                ),
                SizedBox(
                  height: 40,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 50),
                  child: Container6(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

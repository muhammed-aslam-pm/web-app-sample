import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_sample/utils/app_colors.dart';
import 'package:web_app_sample/utils/app_images.dart';
import 'package:web_app_sample/utils/constants.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer1(),
      desktop: (p0) => desktopContainer1(),
      tablet: (p0) => desktopContainer1(),
    );
  }

//-------------------------------Mobile
  Widget mobileContainer1() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: w! / 1.5,
          width: w! / 1.5,
          decoration: BoxDecoration(),
          child: Image.asset(homeImage1),
        ),
        Text(
          "Track your Expenses\n to Save Money",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 12),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Helps you to organize your income \nand expenses",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
        Column(
          children: [
            SizedBox(
              height: 50,
              child: ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.keyboard_arrow_down_rounded),
                label: const Text("Try Free Demo"),
                style: ButtonStyle(
                    backgroundColor:
                        const MaterialStatePropertyAll(primaryColor),
                    iconColor: const MaterialStatePropertyAll(Colors.white),
                    foregroundColor:
                        const MaterialStatePropertyAll(Colors.white),
                    shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5)))),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "— Web, iOs and Android",
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ],
    );
  }

//-------------------------------Desktop
  Widget desktopContainer1() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Track your\nExpenses to\nSave Money",
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 19),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Helps you to organize your income and expenses",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SizedBox(
                  height: 65,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.keyboard_arrow_down_rounded),
                    label: const Text("Try Free Demo"),
                    style: ButtonStyle(
                        backgroundColor:
                            const MaterialStatePropertyAll(primaryColor),
                        iconColor: const MaterialStatePropertyAll(Colors.white),
                        foregroundColor:
                            const MaterialStatePropertyAll(Colors.white),
                        shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)))),
                  ),
                ),
                const SizedBox(
                  width: 20,
                ),
                const Text(
                  "— Web, iOs and Android",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            )
          ],
        ),
        Container(
          height: w! / 2.6,
          width: w! / 2.6,
          decoration: const BoxDecoration(),
          child: Image.asset(homeImage1),
        )
      ],
    );
  }
}

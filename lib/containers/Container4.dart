import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_sample/utils/app_colors.dart';
import 'package:web_app_sample/utils/app_images.dart';
import 'package:web_app_sample/utils/constants.dart';

class Container4 extends StatelessWidget {
  const Container4({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer4(),
      desktop: (p0) => desktopContainer4(),
      tablet: (p0) => desktopContainer4(),
    );
  }

//-------------------------------Mobile
  Widget mobileContainer4() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: w! / 1.5,
          width: w! / 1.5,
          decoration: const BoxDecoration(),
          child: Image.asset(homeImage4),
        ),
        const Text(
          "FREE SOME COST",
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Save cost for you and\nfamily",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 12),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
          textAlign: TextAlign.center,
          overflow: TextOverflow.ellipsis,
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Learn More',
              style: TextStyle(color: primaryColor),
            ),
            SizedBox(
              width: 20,
            ),
            Icon(
              Icons.arrow_forward,
              color: primaryColor,
            )
          ],
        )
      ],
    );
  }

//-------------------------------Desktop
  Widget desktopContainer4() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: w! / 2.6,
          width: w! / 2.6,
          decoration: const BoxDecoration(),
          child: Image.asset(homeImage4),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "FREE SOME COST",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Save cost\nfor you and\nfamily",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 19),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Tellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.",
              style: TextStyle(color: Colors.grey),
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Text(
                  'Learn More',
                  style: TextStyle(color: primaryColor),
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.arrow_forward,
                  color: primaryColor,
                )
              ],
            )
          ],
        ),
      ],
    );
  }
}

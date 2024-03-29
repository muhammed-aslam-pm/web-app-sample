import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_sample/utils/app_colors.dart';
import 'package:web_app_sample/utils/app_images.dart';
import 'package:web_app_sample/utils/constants.dart';

class Container3 extends StatelessWidget {
  const Container3({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer3(),
      desktop: (p0) => desktopContainer3(),
      tablet: (p0) => desktopContainer3(),
    );
  }

//-------------------------------Mobile
  Widget mobileContainer3() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          height: w! / 1.5,
          width: w! / 1.5,
          decoration: const BoxDecoration(),
          child: Image.asset(homeImage3),
        ),
        const Text(
          "ALWAYS ONLINE",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "Real-time support\n with cloud",
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 12),
        ),
        const SizedBox(
          height: 10,
        ),
        const Text(
          "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim accumsan nisi, tincidunt vel. Enim ipsum, amet quis ullamcorper eget ut.",
          textAlign: TextAlign.center,
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
  Widget desktopContainer3() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "ALWAYS ONLINE",
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              "Real-time\nSupport\nwith cloud",
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 19),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Tellus lacus morbi sagittis lacus in. Amet nisl at\nmauris enim accumsan nisi, tincidunt vel. Enim\nipsum, amet quis ullamcorper eget ut.",
              style: TextStyle(color: Colors.grey),
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
        Container(
          height: w! / 2.6,
          width: w! / 2.6,
          decoration: const BoxDecoration(),
          child: Image.asset(homeImage3),
        )
      ],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_sample/utils/app_images.dart';
import 'package:web_app_sample/utils/constants.dart';
import 'package:web_app_sample/widgets/plans_card_desktop.dart';
import 'package:web_app_sample/widgets/plans_card_mobile.dart';

class Container7 extends StatelessWidget {
  const Container7({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer7(),
      desktop: (p0) => desktopContainer7(),
      tablet: (p0) => desktopContainer7(),
    );
  }

//-------------------------------Mobile
  Widget mobileContainer7() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "Choose your flexible plan.",
          textAlign: TextAlign.start,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 19),
        ),
        const PlansContainerMobile(
          image: icon4,
          planName: "Starter plan",
          price: "9.99",
        ),
        const PlansContainerMobile(
          image: icon5,
          planName: "Silver plan",
          price: "19.99",
        ),
        const PlansContainerMobile(
          image: icon6,
          planName: "Diamond plan",
          price: "29.99",
        )
      ],
    );
  }

//-------------------------------Desktop
  Widget desktopContainer7() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Choose your flexible plan.",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.start,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 19),
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PlansContainerDesktop(
              image: icon4,
              planName: "Starter plan",
              price: "9.99",
            ),
            PlansContainerDesktop(
              image: icon5,
              planName: "Silver plan",
              price: "19.99",
            ),
            PlansContainerDesktop(
              image: icon6,
              planName: "Diamond plan",
              price: "29.99",
            ),
          ],
        )
      ],
    );
  }
}

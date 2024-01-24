import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_sample/utils/constants.dart';
import 'package:web_app_sample/widgets/wishers_card.dart';

class Container8 extends StatelessWidget {
  const Container8({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer8(),
      desktop: (p0) => desktopContainer8(),
      tablet: (p0) => desktopContainer8(),
    );
  }

//-------------------------------Mobile
  Widget mobileContainer8() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          "We have millions of\nbest wishers",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 19),
        ),
        SizedBox(
          height: 50,
        ),
        SingleChildScrollView(
            physics: const ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                20,
                (index) => const WishersCard(),
              ),
            ))
      ],
    );
  }

//-------------------------------Desktop
  Widget desktopContainer8() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "We have millions of\nbest wishers",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 20),
        ),
        SizedBox(
          height: 50,
        ),
        SingleChildScrollView(
            physics: const ScrollPhysics(),
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                20,
                (index) => const WishersCard(),
              ),
            ))
      ],
    );
  }
}

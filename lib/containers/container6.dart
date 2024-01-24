import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_sample/utils/app_images.dart';
import 'package:web_app_sample/utils/constants.dart';
import 'package:web_app_sample/widgets/works_card_desktop.dart';
import 'package:web_app_sample/widgets/works_card_mobile.dart';

class Container6 extends StatelessWidget {
  const Container6({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer6(),
      desktop: (p0) => desktopContainer6(),
      tablet: (p0) => desktopContainer6(),
    );
  }

//-------------------------------Mobile
  Widget mobileContainer6() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "The Product we\nwork with",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 19),
        ),
        const Text(
          "Tellus lacus morbi sagittis lacus in. Amet nisl at mauris enim aumsan nisi, tincidunt vel. Enim ipsum, at quis ullamcorper eget ut.",
          overflow: TextOverflow.ellipsis,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        const worksCardMobile(image: icon1, title: "Cross Platform"),
        const worksCardMobile(image: icon2, title: "Cloud Server"),
        const worksCardMobile(image: icon2, title: "Javascript")
      ],
    );
  }

//-------------------------------Desktop
  Widget desktopContainer6() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Text(
              "The Product we\nwork with",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 19),
            ),
            const Text(
              "Tellus lacus morbi sagittis lacus in.\nAmet nisl at mauris enim aumsan\nnisi, tincidunt vel. Enim ipsum, at\nquis ullamcorper eget ut.",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.start,
              style: TextStyle(
                fontSize: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            worksCardDesktop(image: icon1, title: "Cross Platform"),
            worksCardDesktop(image: icon2, title: "Cloud Server"),
            worksCardDesktop(image: icon2, title: "Javascript"),
          ],
        )
      ],
    );
  }
}

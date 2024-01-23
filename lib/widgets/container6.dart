import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_sample/utils/app_colors.dart';
import 'package:web_app_sample/utils/app_images.dart';
import 'package:web_app_sample/utils/constants.dart';

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
          textAlign: TextAlign.center,
          style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 19),
        ),
        const Text(
          "Tellus lacus morbi sagittis lacus in.\nAmet nisl at mauris enim aumsan\nnisi, tincidunt vel. Enim ipsum, at\nquis ullamcorper eget ut.",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20,
            color: Colors.grey,
          ),
        ),
        worksCard(image: icon1, title: "Cross Platform"),
        worksCard(image: icon2, title: "Cloud Server"),
        worksCard(image: icon2, title: "Javascript")
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
              textAlign: TextAlign.start,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: w! / 19),
            ),
            const Text(
              "Tellus lacus morbi sagittis lacus in.\nAmet nisl at mauris enim aumsan\nnisi, tincidunt vel. Enim ipsum, at\nquis ullamcorper eget ut.",
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
            worksCard(image: icon1, title: "Cross Platform"),
            worksCard(image: icon2, title: "Cloud Server"),
            worksCard(image: icon2, title: "Javascript"),
          ],
        )
      ],
    );
  }
}

class worksCard extends StatelessWidget {
  const worksCard({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(w! * 0.07),
      height: w! * 0.3,
      width: w! * 0.3,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Elit esse cillum dolore eu fugiat nulla\n pariatur",
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          )
        ],
      ),
    );
  }
}

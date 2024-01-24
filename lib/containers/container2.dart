import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_sample/utils/app_colors.dart';
import 'package:web_app_sample/utils/app_images.dart';
import 'package:web_app_sample/utils/constants.dart';
import 'package:web_app_sample/widgets/bradns_logo.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (p0) => mobileContainer2(),
      desktop: (p0) => desktopContainer2(),
      // tablet: (p0) => desktopContainer2(),
    );
  }

//-------------------------------Desktop
  Widget desktopContainer2() {
    return Container(
      height: 900,
      width: double.infinity,
      color: primaryColor,
      child: Expanded(
          child: Stack(
        children: [
          Positioned(right: -600, top: -800, child: Image.asset(vector1)),
          Positioned(left: -300, top: 300, child: Image.asset(vector2)),
          Positioned(
            right: w! * 0.114,
            left: w! * 0.114,
            top: 87,
            child: Image.asset(dashbordImage),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 188,
                color: Colors.white,
                child: const Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    logo(assetImage: facebookLogo),
                    logo(assetImage: googleLogo),
                    logo(assetImage: cococolaLogo),
                    logo(assetImage: linkedinLogo),
                    logo(assetImage: samsungLogo),
                  ],
                ),
              ))
        ],
      )),
    );
  }

  //-------------------------------Desktop
  Widget mobileContainer2() {
    return Container(
      height: 480,
      width: double.infinity,
      color: primaryColor,
      child: Expanded(
          child: Stack(
        children: [
          Positioned(right: -600, top: -800, child: Image.asset(vector1)),
          Positioned(left: -300, top: 300, child: Image.asset(vector2)),
          Positioned(
            right: 20,
            left: 20,
            top: 30,
            child: Image.asset(dashbordImage),
          ),
          Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 200,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: 30,
                      width: 100,
                      decoration: const BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage(facebookLogo))),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: const BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage(googleLogo))),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: const BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage(cococolaLogo))),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: const BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage(linkedinLogo))),
                    ),
                    Container(
                      height: 30,
                      width: 100,
                      decoration: const BoxDecoration(
                          image:
                              DecorationImage(image: AssetImage(samsungLogo))),
                    ),
                  ],
                ),
              ))
        ],
      )),
    );
  }
}

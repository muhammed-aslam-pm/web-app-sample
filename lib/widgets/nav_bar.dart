import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app_sample/utils/app_colors.dart';
import 'package:web_app_sample/utils/app_images.dart';
import 'package:web_app_sample/widgets/logo.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      desktop: (p0) => desktopNavbar(),
      mobile: (p0) => mobileNavbar(),
      tablet: (p0) => desktopNavbar(),
    );
  }

//--------------------------------Mobile
  Widget mobileNavbar() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Row(
            children: [
              Icon(Icons.menu),
              SizedBox(
                width: 5,
              ),
              NavbarLogo(),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Request a demo",
              style: TextStyle(color: primaryColor),
            ),
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: primaryColor)),
              ),
            ),
          )
        ],
      ),
    );
  }

//--------------------------------Desktop
  Widget desktopNavbar() {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const NavbarLogo(),
          const Row(
            children: [
              NavbarTextButton(text: "Features"),
              NavbarTextButton(text: "About us"),
              NavbarTextButton(text: "Pricing"),
              NavbarTextButton(text: "Feedback"),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "Request a demo",
              style: TextStyle(color: primaryColor),
            ),
            style: ButtonStyle(
              shape: MaterialStatePropertyAll(
                RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                    side: BorderSide(color: primaryColor)),
              ),
            ),
          )
        ],
      ),
    );
  }
}



class NavbarTextButton extends StatelessWidget {
  const NavbarTextButton({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Text(text,
          style: const TextStyle(
              color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400)),
    );
  }
}

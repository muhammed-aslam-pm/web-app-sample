import 'package:flutter/material.dart';
import 'package:web_app_sample/utils/app_images.dart';

class NavbarLogo extends StatelessWidget {
  const NavbarLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(appLogo),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "pense",
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
}

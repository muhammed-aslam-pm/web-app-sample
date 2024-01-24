import 'package:flutter/material.dart';
import 'package:web_app_sample/utils/app_images.dart';

class WishersCard extends StatelessWidget {
  const WishersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15, bottom: 30),
      child: Container(
        height: 220,
        width: 340,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colors.blue,
        ),
        child: Stack(
          children: [
            Positioned(
                top: 10,
                child: Container(
                  height: 210,
                  width: 340,
                  padding: const EdgeInsets.all(20),
                  color: Colors.white,
                  child: const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 95,
                        width: double.infinity,
                        child: Text(
                          "Eleifend fames amet, fames enim. Ullamcorper pellentesque ac volutpat nibh aliquet et, ut netus. Vel, fringilla sit eros pretium felis massa mauris, aliquam congue.",
                          maxLines: null,
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage(profilePhoto),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Cameron Williamson, ",
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Text(
                            "CEO",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

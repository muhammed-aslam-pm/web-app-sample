import 'package:flutter/material.dart';
import 'package:web_app_sample/utils/constants.dart';

class worksCardDesktop extends StatelessWidget {
  const worksCardDesktop({
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
          const SizedBox(
            height: 20,
          ),
          Text(
            title,
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Elit esse cillum dolore eu fugiat nulla\n pariatur",
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          )
        ],
      ),
    );
  }
}

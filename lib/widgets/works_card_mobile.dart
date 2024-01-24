import 'package:flutter/material.dart';
import 'package:web_app_sample/utils/constants.dart';

class worksCardMobile extends StatelessWidget {
  const worksCardMobile({
    super.key,
    required this.image,
    required this.title,
  });
  final String image;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(w! * 0.1),
      height: w! * 0.58,
      width: w!,
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
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Elit esse cillum dolore eu fugiat nulla pariatur",
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            maxLines: null,
            style: TextStyle(color: Colors.grey, fontSize: 15),
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:web_app_sample/utils/app_colors.dart';
import 'package:web_app_sample/utils/constants.dart';

class PlansContainerMobile extends StatelessWidget {
  const PlansContainerMobile({
    super.key,
    required this.planName,
    required this.image,
    required this.price,
  });
  final String planName;
  final String image;
  final String price;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: w! * 0.9,
      height: w! * 0.5,
      padding: EdgeInsets.all(w! * 0.045),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(image),
          Text(
            planName,
            style: const TextStyle(fontWeight: FontWeight.w700, fontSize: 20),
          ),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.done,
                    color: Colors.grey,
                    size: 13,
                  ),
                  Text(
                    "  Store unlimited data",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.done,
                    color: Colors.grey,
                    size: 13,
                  ),
                  Text(
                    "  Export to pdf, xls, csv",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.done,
                    color: Colors.grey,
                    size: 13,
                  ),
                  Text(
                    "  Cloud server support",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 13),
                  )
                ],
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "$price/",
                style: const TextStyle(fontWeight: FontWeight.w700),
              ),
              const Text(
                'year',
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          SizedBox(
            width: w! * 0.3,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStatePropertyAll(
                  RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      side: const BorderSide(color: primaryColor)),
                ),
              ),
              child: const Row(
                children: [
                  Text(
                    "Get this  ",
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: primaryColor),
                  ),
                  Icon(
                    Icons.arrow_forward,
                    color: primaryColor,
                    size: 15,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

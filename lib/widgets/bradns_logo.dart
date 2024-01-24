import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  const logo({super.key, required this.assetImage});
  final String? assetImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 140,
      decoration:
          BoxDecoration(image: DecorationImage(image: AssetImage(assetImage!))),
    );
  }
}

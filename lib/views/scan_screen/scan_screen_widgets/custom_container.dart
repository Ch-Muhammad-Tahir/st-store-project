import 'package:flutter/material.dart';

import '../../../utils/common_assets.dart';

class CustomScanContainerWidget extends StatelessWidget {
  final String imagePath;
  final double height;
  final double width;
  const CustomScanContainerWidget(
      {super.key,
      required this.imagePath,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          image:
              DecorationImage(image: AssetImage(imagePath), fit: BoxFit.fill)),
    );
  }
}

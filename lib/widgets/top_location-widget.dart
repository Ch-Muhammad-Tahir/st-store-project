import 'package:flutter/material.dart';
import '../utils/onboarding/onboarding_assets.dart';
import '../utils/common_screen_strings.dart';
import 'custom_sized_box.dart';

class CustomShowLocation extends StatefulWidget {
  final TextStyle style =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 12);
  const CustomShowLocation({super.key});

  @override
  State<CustomShowLocation> createState() => _CustomShowLocationState();
}

class _CustomShowLocationState extends State<CustomShowLocation> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(AppOnBoardingAssets.loactionIcon),
        const CustomSizedBox(
          width: 10,
        ),
        Text(
          AppCommonStrings.location,
          style: widget.style,
        )
      ],
    );
  }
}

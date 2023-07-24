import 'package:flutter/material.dart';

import '../../../utils/onboarding/onboarding_assets.dart';

class OnBoardingStackView extends StatelessWidget {
  const OnBoardingStackView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.amber,
      height: 500,
      width: double.infinity,
      child: Stack(alignment: Alignment.center, children: [
        Positioned(
            bottom: 30,
            left: 1,
            child: Image.asset(
              AppOnBoardingAssets.over2,
            )),
        Positioned(
            top: 20,
            right: 1,
            child: Image.asset(
              AppOnBoardingAssets.over1,
            )),
        Image.asset(AppOnBoardingAssets.board)
      ]),
    );
  }
}

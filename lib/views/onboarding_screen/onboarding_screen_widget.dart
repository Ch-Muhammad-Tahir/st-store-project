import 'package:flutter/material.dart';
import 'package:st_store/utils/app_button_strings.dart';
import 'package:st_store/utils/colors/app_colors.dart';
import 'package:st_store/utils/common_assets.dart';
import 'package:st_store/utils/common_screen_strings.dart';
import 'package:st_store/views/login_screen/login_screen.dart';
import 'package:st_store/widgets/center_text_widget.dart';
import 'package:st_store/widgets/custom_icon_text_button.dart';
import 'package:st_store/widgets/custom_sized_box.dart';
import '../../views/onboarding_screen/onBoarding_screen_widgets/onboarding_stack_view.dart';

class OnBoardingScreenWidget extends StatelessWidget {
  const OnBoardingScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            const OnBoardingStackView(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: Column(
                children: [
                  SizedBox(
                    child: CenterScreenTextWidget(
                        headingText: AppCommonStrings.welcomeOnBoardingHeading,
                        discreption: AppCommonStrings.welcomeOnBoardingText),
                  ),
                  const CustomSizedBox(
                    height: 48,
                  ),
                  CustomTextIconButton(
                    onTab: () {
                      btnGetStartedPressed(context);
                    },
                    radius: 10,
                    color: AppCommonColors.yelloButtonColor,
                    buttonText: AppButtonStrings.getStartedButton,
                    buttonRightIcon: CommonAppAssets.rightArrowIcon,
                    setRightIcon: true,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  void btnGetStartedPressed(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreenWidget()),
    );
  }
}

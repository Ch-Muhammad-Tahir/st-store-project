import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:st_store/utils/app_button_strings.dart';
import 'package:st_store/utils/colors/app_colors.dart';
import 'package:st_store/utils/common_assets.dart';
import 'package:st_store/widgets/custom_icon_text_button.dart';
import 'package:st_store/widgets/custom_sized_box.dart';

import '../../utils/common_screen_strings.dart';
import '../../widgets/center_text_widget.dart';

class OtpVerifyScreenWidget extends StatelessWidget {
  const OtpVerifyScreenWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 35, right: 35),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomSizedBox(
                  height: 148,
                ),
                CenterScreenTextWidget(
                    discreption: AppCommonStrings.otpAuthenticationDiscription,
                    headingText: AppCommonStrings.otpAuthenticationHeading),
                SizedBox(
                  height: 300,
                  child: OTPTextField(
                      //controller: otpController,
                      length: 4,
                      width: MediaQuery.of(context).size.width,
                      textFieldAlignment: MainAxisAlignment.spaceAround,
                      fieldWidth: 45,
                      fieldStyle: FieldStyle.underline,
                      outlineBorderRadius: 15,
                      obscureText: true,
                      style: const TextStyle(fontSize: 17),
                      onChanged: (val) {
                        print("Onchanged : $val");
                      },
                      onCompleted: (pin) {
                        print("Completed: " + pin);
                      }),
                ),
                CustomTextIconButton(
                  onTab: () {},
                  radius: 10,
                  color: AppCommonColors.yelloButtonColor,
                  buttonText: AppButtonStrings.continueButton,
                  buttonRightIcon: CommonAppAssets.rightArrowIcon,
                  setRightIcon: true,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

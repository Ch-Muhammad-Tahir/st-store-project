import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/common_assets.dart';
import '../../utils/common_screen_strings.dart';
import '../../widgets/center_text_widget.dart';
import '../../widgets/custom_icon_text_button.dart';

import '../../widgets/custom_sized_box.dart';
import '../../widgets/top_location-widget.dart';

class PasswordRecoveryScreenWidget extends StatefulWidget {
  const PasswordRecoveryScreenWidget({super.key});

  @override
  State<PasswordRecoveryScreenWidget> createState() =>
      _PasswordRecoveryScreenWidgetState();
}

class _PasswordRecoveryScreenWidgetState
    extends State<PasswordRecoveryScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 36, right: 36, top: 64),
          child: GestureDetector(
            onTap: () {
              FocusScope.of(context).requestFocus(FocusNode());
            },
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const CustomShowLocation(),
              const CustomSizedBox(
                height: 64,
              ),
              SizedBox(
                width: 240,
                child: CenterScreenTextWidget(
                  headingText: AppCommonStrings.passwordRecovery,
                  discreption: AppCommonStrings.enterPhoneNumber,
                ),
              ),
              const CustomSizedBox(
                height: 40,
              ),
              const Text(
                "Phone Number",
                //style: TextStyle(color: AppCommonColors.inputfieldLabelColor),
              ),
              IntlPhoneField(
                decoration: const InputDecoration(
                    //labelText: 'Phone Number',
                    ),
                initialValue: "+92",
                autofocus: false,
                //dropdownIcon: Icon(Icons.arrow_drop_down_circle),
                dropdownIconPosition: IconPosition.trailing,
                onChanged: (phone) {
                  print(phone.completeNumber);
                },
              ),
              const CustomSizedBox(
                height: 68,
              ),
              CustomTextIconButton(
                onTab: () {},
                radius: 8,
                color: AppCommonColors.yelloButtonColor,
                buttonText: "C0NTINUE",
                buttonRightIcon: CommonAppAssets.rightArrowIcon,
                setRightIcon: true,
              ),
            ]),
          ),
        ),
      ),
    );
  }
}

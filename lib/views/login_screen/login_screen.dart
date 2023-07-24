import 'package:flutter/material.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/common_assets.dart';
import '../../utils/common_screen_strings.dart';
import '../../utils/toast_strings.dart';
import '../../views/password_recovery/password_recovery_screen_widget.dart';
import '../../views/sign_up_screen/sign_up_screen_widget.dart';
import '../../widgets/center_text_widget.dart';
import '../../widgets/custom_rich_text.dart';
import '../../widgets/top_location-widget.dart';
import '../../widgets/custom_icon_text_button.dart';
import '../../widgets/custom_sized_box.dart';
import '../../widgets/custom_text_fied.dart';

import '../../utils/app_button_strings.dart';

class LoginScreenWidget extends StatefulWidget {
  const LoginScreenWidget({super.key});

  @override
  State<LoginScreenWidget> createState() => _LoginScreenWidgetState();
}

class _LoginScreenWidgetState extends State<LoginScreenWidget> {
  TextEditingController userNameTfController = TextEditingController();
  TextEditingController passwordTfController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Padding(
            padding: const EdgeInsets.only(left: 36, right: 36, top: 65),
            child: GestureDetector(
              onTap: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CustomShowLocation(),
                  const CustomSizedBox(
                    height: 64,
                  ),
                  CenterScreenTextWidget(
                    headingText: AppCommonStrings.singInText,
                    discreption: AppCommonStrings.welcomText,
                  ),
                  const CustomSizedBox(
                    height: 40,
                  ),
                  CustomTextField(
                      hintText: "UserName",
                      iconData: Icons.person,
                      labelText: AppCommonStrings.usernameTfLable,
                      obscureText: false,
                      textInputType: TextInputType.emailAddress,
                      controller: userNameTfController),
                  const CustomSizedBox(
                    height: 20,
                  ),
                  CustomTextField(
                    hintText: "******",
                    iconData: Icons.lock,
                    labelText: AppCommonStrings.passwordTfLable,
                    obscureText: true,
                    textInputType: TextInputType.text,
                    controller: passwordTfController,
                  ),
                  const CustomSizedBox(
                    height: 100,
                  ),
                  CustomTextIconButton(
                    onTab: () {},
                    radius: 5,
                    color: AppCommonColors.yelloButtonColor,
                    buttonText: AppButtonStrings.signInButton,
                    buttonRightIcon: CommonAppAssets.loginIcon,
                    setRightIcon: true,
                  ),
                  const CustomSizedBox(
                    height: 30,
                  ),
                  Center(
                    child: CustomRichText(
                        firstText: AppCommonStrings.askAccount,
                        secondText: AppCommonStrings.signUp,
                        onTab: () {
                          signUpOnTab();
                        }),
                  ),
                  const CustomSizedBox(
                    height: 30,
                  ),
                  CustomTextIconButton(
                    onTab: () {
                      btnFacebookOnTab();
                    },
                    radius: 5,
                    color: AppCommonColors.facebookButtonColor,
                    buttonText: AppButtonStrings.facebookButtion,
                    buttonLeftIcon: CommonAppAssets.facebookIcon,
                    setLeftIcon: true,
                  )
                ],
              ),
            ),
          )),
    );
  }

  void loginButtonOnTab() {
    String tfUserName = userNameTfController.text.trim();
    String tfPassword = passwordTfController.text.trim();

    if (tfUserName.isEmpty) {
      showToast(context, AppToastStrings.enterEmail);
    } else if (tfUserName.isEmpty) {
      showToast(context, AppToastStrings.enterPawssword);
    }
  }

  void btnFacebookOnTab() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const PasswordRecoveryScreenWidget()),
    );
  }

  void signUpOnTab() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const SignUpScreenWidget()),
    );
  }

  void showToast(BuildContext context, String text) {
    var scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(SnackBar(
      content: Text(text),
      behavior: SnackBarBehavior.floating,
      action: SnackBarAction(
        label: "Okay",
        onPressed: scaffold.hideCurrentSnackBar,
      ),
    ));
  }
}

import 'package:flutter/material.dart';
import '../../utils/toast_strings.dart';
import '../../views/login_screen/login_screen.dart';
import '../../utils/colors/app_colors.dart';
import '../../utils/common_assets.dart';
import '../../utils/common_screen_strings.dart';
import '../../widgets/center_text_widget.dart';
import '../../widgets/custom_rich_text.dart';
import '../../widgets/top_location-widget.dart';
import '../../widgets/custom_icon_text_button.dart';
import '../../widgets/custom_sized_box.dart';
import '../../widgets/custom_text_fied.dart';
import '../../utils/app_button_strings.dart';
import '../password_recovery/password_recovery_screen_widget.dart';

class SignUpScreenWidget extends StatefulWidget {
  const SignUpScreenWidget({super.key});

  @override
  State<SignUpScreenWidget> createState() => _SignUpScreenWidgetState();
}

class _SignUpScreenWidgetState extends State<SignUpScreenWidget> {
  TextEditingController emailTfController = TextEditingController();
  TextEditingController userNameTfController = TextEditingController();
  TextEditingController passwordTfController = TextEditingController();
  bool isTermAndConditionsChecked = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          //  resizeToAvoidBottomInset: false,
          body: SingleChildScrollView(
        child: Padding(
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
                    headingText: AppCommonStrings.getStarted,
                    discreption: AppCommonStrings.createAccount),
                const CustomSizedBox(height: 40),
                CustomTextField(
                    hintText: "Enter Your Email",
                    iconData: Icons.mail_outline,
                    labelText: AppCommonStrings.email,
                    obscureText: false,
                    textInputType: TextInputType.emailAddress,
                    controller: emailTfController),
                const CustomSizedBox(height: 20),
                CustomTextField(
                    hintText: "Enter Username",
                    iconData: Icons.person_4_outlined,
                    labelText: AppCommonStrings.usnerName,
                    obscureText: false,
                    textInputType: TextInputType.text,
                    controller: passwordTfController),
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
                  height: 20,
                ),
                CustomTextIconButton(
                  onTab: () {
                    checkValidation();
                  },
                  radius: 5,
                  color: AppCommonColors.yelloButtonColor,
                  buttonText: AppButtonStrings.signUpButton,
                  buttonRightIcon: CommonAppAssets.loginIcon,
                  setRightIcon: true,
                ),
                const CustomSizedBox(
                  height: 30,
                ),
                Center(
                  child: CustomRichText(
                      firstText: AppCommonStrings.alreadyAccount,
                      secondText: AppCommonStrings.signIn,
                      onTab: () {
                        loginButtonOnTab();
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
        ),
      )),
    );
  }

  void btnFacebookOnTab() {
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) => const PasswordRecoveryScreenWidget()),
    );
  }

  void checkValidation() {
    String tfEmail = emailTfController.text.trim();
    String tfUserName = emailTfController.text.trim();
    String tfPassword = emailTfController.text.trim();
    if (tfEmail.isEmpty) {
      showToast(AppToastStrings.emailEmpty);
    } else if (tfUserName.isEmpty) {
      showToast(AppToastStrings.userName);
    } else if (tfPassword.isEmpty) {
      showToast(AppToastStrings.enterPawssword);
    }
  }

  void loginButtonOnTab() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const LoginScreenWidget()),
    );
  }

  void showToast(String text) {
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

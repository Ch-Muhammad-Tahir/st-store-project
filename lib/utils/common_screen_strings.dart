import 'package:st_store/utils/common_assets.dart';

import '../models/product.dart';

class AppCommonStrings {
  static String location = "Perth, Western Australia";
  static String singInText = "Let's Sign You In";
  static String welcomText = "Welcome back, you'r been missed!";
  static String usernameTfLable = "Username or Email";
  static String passwordTfLable = "Password";
  static String askAccount = "Don't have an account? ";
  static String alreadyAccount = "Already have an account? ";
  static String signUp = "Sign up";
  static String signIn = "Sign In";
  static String usnerName = "Username";
  static String email = "Email";

  static String getStarted = "Getting Started";
  static String createAccount = "Create an account to continue!";
  static String passwordRecovery = "Password Recovery";
  static String enterPhoneNumber =
      "Enter your Phone number to recover your password";

  static String welcomeOnBoardingHeading = "Welcome to STStore !";
  static String welcomeOnBoardingText =
      "With long experience in the audio industry, we create the best quality products";

  static String otpAuthenticationHeading = "OTP Authentication";
  static String otpAuthenticationDiscription =
      "An authentication code has been sent to ";

  static String productName1 = "Speakers";
  static String productName2 = "HeadPhones";
  static String productName3 = "Beosound 1";
  static String productName4 = "Beolit 17";

  static String productQuantity1 = "100+ Products";
  static String productQuantity2 = "50+ Products";
  static String productQuantity3 = "300+ Products";
  static String productQuantity4 = "400+ Products";

  static String productPrice1 = "\$500";
  static String productPrice2 = "\$300";
  static String productPrice3 = "\$800";
  static String productPrice4 = "\$100";

  static List<Product> products = [
    Product(AppCommonStrings.productName1, AppCommonStrings.productPrice1,
        CommonAppAssets.productImage, AppCommonStrings.productQuantity1),
    Product(AppCommonStrings.productName2, AppCommonStrings.productPrice2,
        CommonAppAssets.productImage1, AppCommonStrings.productQuantity2),
    Product(AppCommonStrings.productName3, AppCommonStrings.productPrice3,
        CommonAppAssets.productImage2, AppCommonStrings.productQuantity3),
    Product(AppCommonStrings.productName3, AppCommonStrings.productPrice3,
        CommonAppAssets.productImage3, AppCommonStrings.productQuantity3),
    Product(AppCommonStrings.productName1, AppCommonStrings.productPrice1,
        CommonAppAssets.productImage, AppCommonStrings.productQuantity1),
    Product(AppCommonStrings.productName3, AppCommonStrings.productPrice3,
        CommonAppAssets.productImage2, AppCommonStrings.productQuantity3),
    Product(AppCommonStrings.productName3, AppCommonStrings.productPrice3,
        CommonAppAssets.productImage3, AppCommonStrings.productQuantity3),
  ];
}

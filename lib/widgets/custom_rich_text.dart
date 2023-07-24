import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:st_store/utils/colors/app_colors.dart';

class CustomRichText extends StatelessWidget {
  final String firstText;
  final String secondText;
  final VoidCallback onTab;
  const CustomRichText(
      {super.key,
      required this.onTab,
      required this.firstText,
      required this.secondText});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      TextSpan(
          text: firstText,
          style: TextStyle(
              color: AppCommonColors.inputfieldLabelColor, fontSize: 16)),
      TextSpan(
          text: secondText,
          style: const TextStyle(
              color: Colors.black, fontWeight: FontWeight.w800, fontSize: 16),
          recognizer: TapGestureRecognizer()..onTap = onTab),
    ]));
  }
}

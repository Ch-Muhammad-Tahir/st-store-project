import 'package:flutter/material.dart';
import '../widgets/custom_sized_box.dart';
import '../utils/common_screen_strings.dart';

class CenterScreenTextWidget extends StatelessWidget {
  final String headingText;
  final String discreption;
  final TextStyle loginStyle =
      const TextStyle(fontWeight: FontWeight.w700, fontSize: 24);
  final TextStyle welcomeStyle = const TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: 14,
  );
  const CenterScreenTextWidget(
      {super.key, required this.headingText, required this.discreption});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headingText,
          style: loginStyle,
        ),
        const CustomSizedBox(
          height: 15,
        ),
        Text(
          discreption,
          style: welcomeStyle,
        )
      ],
    );
  }
}

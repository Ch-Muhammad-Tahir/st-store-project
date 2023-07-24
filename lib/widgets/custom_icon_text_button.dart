// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:st_store/utils/colors/app_colors.dart';

class CustomTextIconButton extends StatelessWidget {
  final String buttonLeftIcon;
  final String buttonText;
  final bool setLeftIcon;
  final bool setRightIcon;
  final String buttonRightIcon;
  final VoidCallback onTab;
  final Color color;
  late BorderRadius radius;
  CustomTextIconButton(
      {super.key,
      this.buttonLeftIcon = "",
      this.buttonRightIcon = "",
      required this.onTab,
      required double radius,
      required this.color,
      required this.buttonText,
      this.setLeftIcon = false,
      this.setRightIcon = false}) {
    this.radius = BorderRadius.circular(radius);
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: radius,
      child: InkWell(
        borderRadius: radius,
        onTap: onTab,
        child: Container(
          height: 44,
          decoration: BoxDecoration(
            color: color,
            borderRadius: radius,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  setLeftIcon
                      ? Image.asset(
                          buttonLeftIcon,
                        )
                      : const Text(""),
                  Text(
                    buttonText,
                    style: TextStyle(
                        color: AppCommonColors.buttonTextColor, fontSize: 20),
                  ),
                  setRightIcon ? Image.asset(buttonRightIcon) : const Text("")
                ]),
          ),
        ),
      ),
    );
  }
}

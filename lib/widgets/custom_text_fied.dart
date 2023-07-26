import 'package:flutter/material.dart';
import 'package:st_store/utils/colors/app_colors.dart';

class CustomTextField extends StatefulWidget {
  final String labelText;
  final String hintText;
  final IconData iconData;
  final TextInputType textInputType;
  final bool obscureText;
  final TextEditingController controller;
  const CustomTextField(
      {super.key,
      required this.labelText,
      required this.hintText,
      required this.iconData,
      required this.textInputType,
      required this.obscureText,
      required this.controller});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          widget.labelText,
          style: TextStyle(color: AppCommonColors.inputfieldLabelColor),
        ),
        TextField(
          autofocus: false,
          controller: widget.controller,
          decoration: InputDecoration(
            hintText: widget.hintText,
            prefixIcon: Icon(widget.iconData),
          ),
          obscureText: widget.obscureText,
        ),
      ],
    );
  }
}

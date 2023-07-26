import 'dart:math';

import 'package:flutter/material.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../widgets/custom_icon_text_button.dart';
import '../../../widgets/custom_sized_box.dart';

class CustomModelBottomWidget extends StatefulWidget {
  const CustomModelBottomWidget({super.key});

  @override
  State<CustomModelBottomWidget> createState() =>
      _CustomModelBottomWidgetState();
}

class _CustomModelBottomWidgetState extends State<CustomModelBottomWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 56, left: 36, right: 36),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Gender',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomTextIconButton(
                  onTab: () {},
                  radius: 10,
                  color: AppCommonColors.yelloButtonColor,
                  buttonText: "Men"),
              CustomTextIconButton(
                  onTab: () {},
                  radius: 10,
                  color: AppCommonColors.yelloButtonColor,
                  buttonText: "Woman"),
              CustomTextIconButton(
                  onTab: () {},
                  radius: 10,
                  color: AppCommonColors.yelloButtonColor,
                  buttonText: "Both"),
            ],
          ),
          const Divider(thickness: 1),
          const Text(
            'Price Range',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          Row(
            children: [
              Expanded(
                  child: CustomTextIconButton(
                onTab: () {},
                radius: 10,
                color: AppCommonColors.yelloButtonColor,
                buttonText: "Min",
              )),
              const CustomSizedBox(
                width: 10,
              ),
              Expanded(
                  child: CustomTextIconButton(
                      onTab: () {},
                      radius: 10,
                      color: AppCommonColors.yelloButtonColor,
                      buttonText: "Max")),
            ],
          ),
          CustomSizedBox(
            height: 20,
          ),
          const Text(
            'Color',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
          ),
          CustomSizedBox(
            height: 20,
          ),
          Container(
            height: 60,
            width: double.infinity,
            // color: Colors.black12,
            child: ListView.separated(
              itemBuilder: (context, index) {
                return Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.primaries[
                          Random().nextInt(Colors.primaries.length)]),
                );
              },
              itemCount: 8,
              scrollDirection: Axis.horizontal,
              separatorBuilder: (BuildContext context, int index) {
                return const SizedBox(
                  width: 5,
                );
              },
            ),
          ),
          const CustomSizedBox(
            height: 20,
          ),
          Row(
            children: [
              CustomTextIconButton(
                  onTab: () {},
                  radius: 10,
                  color: AppCommonColors.yelloButtonColor,
                  buttonText: "Apply Filter"),
              CustomSizedBox(
                width: 20,
              ),
              CustomTextIconButton(
                  onTab: () {},
                  radius: 10,
                  color: AppCommonColors.yelloButtonColor,
                  buttonText: "Reset")
            ],
          )
        ],
      ),
    );
  }
}

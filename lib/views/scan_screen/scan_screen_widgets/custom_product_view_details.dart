import 'package:flutter/material.dart';
import 'package:st_store/utils/common_assets.dart';
import 'package:st_store/utils/common_screen_strings.dart';
import 'package:st_store/widgets/custom_sized_box.dart';

class CustomProductViewDetailsWidiget extends StatelessWidget {
  const CustomProductViewDetailsWidiget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 104,
        width: 305,
        color: Colors.white,
        child: Row(children: [
          Image.asset(CommonAppAssets.sacnProduct),
          const CustomSizedBox(
            width: 10,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Speakers"),
              Text(
                AppCommonStrings.productName3,
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              const Text("4.5(1k Reviews)"),
            ],
          )
        ]),
      ),
    );
  }
}

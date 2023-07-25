import 'package:flutter/material.dart';
import 'package:st_store/models/product.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/common_assets.dart';
import '../../../utils/common_screen_strings.dart';
import '../../../widgets/custom_sized_box.dart';

class CategoryViewItemTile extends StatelessWidget {
  final Product product;
  const CategoryViewItemTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: AppCommonColors.itemViewBackgroundColor,
      ),
      child: Row(children: [
        Image.asset(product.productAssetAddress),
        const CustomSizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppCommonStrings.productName3,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            Row(
              children: [
                const Text(
                  "4.5",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Image.asset("assets/Rate.png")
              ],
            ),
            Text(
              product.productprice,
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        )
      ]),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:st_store/utils/colors/app_colors.dart';
import 'package:st_store/utils/common_assets.dart';

import '../../../models/product.dart';

class CustomProdutViewTile extends StatelessWidget {
  final double outerContaierHeight;
  final double outerContaierWidth;
  final double innerontaierHeight;
  final double innerontaierWidth;
  final double? imageHeight;
  final double? imageWidth;
  final Product product;
  final bool increasImageSize;
  final VoidCallback callback;
  const CustomProdutViewTile(
      {super.key,
      required this.product,
      this.outerContaierHeight = 248,
      this.outerContaierWidth = 205,
      this.innerontaierHeight = 200,
      this.innerontaierWidth = 205,
      this.imageHeight,
      this.imageWidth,
      this.increasImageSize = false,
      required this.callback});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        height: outerContaierHeight,
        width: outerContaierWidth,
        // color: Colors.amber,
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
                height: innerontaierHeight,
                width: innerontaierWidth,
                decoration: BoxDecoration(
                    color: AppCommonColors.itemViewBackgroundColor,
                    borderRadius: BorderRadius.circular(30)),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Positioned(
                      bottom: 50,
                      child: Text(
                        product.productName,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      child: Text(product.productQuantity),
                    )
                  ],
                )),
            Positioned(
                top: 1,
                child: increasImageSize
                    ? Image.asset(
                        product.productAssetAddress,
                        height: imageHeight,
                        width: imageWidth,
                      )
                    : Image.asset(
                        product.productAssetAddress,
                      )),
          ],
        ),
      ),
    );
  }
}

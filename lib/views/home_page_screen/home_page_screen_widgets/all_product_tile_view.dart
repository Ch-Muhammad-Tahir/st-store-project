import 'package:flutter/material.dart';
import 'package:st_store/models/product.dart';
import 'package:st_store/utils/common_assets.dart';

class AllProductsListTile extends StatelessWidget {
  final Product product;
  const AllProductsListTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 245,
      width: 170,
      decoration: BoxDecoration(
          color: Color.fromRGBO(235, 235, 240, 1),
          borderRadius: BorderRadius.circular(15)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(product.productAssetAddress),
        Text(
          product.productName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        Text(
          product.productprice,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
        ),
      ]),
    );
  }
}

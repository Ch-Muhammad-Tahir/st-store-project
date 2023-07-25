import 'package:flutter/material.dart';
import 'package:st_store/models/product.dart';
import 'package:st_store/widgets/custom_sized_box.dart';

class CustomSearchViewTile extends StatelessWidget {
  Product product;
  CustomSearchViewTile({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          const Icon(Icons.access_time_outlined),
          const CustomSizedBox(
            width: 10,
          ),
          Expanded(
              child: Text(
            product.productName,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          )),
          const Icon(Icons.cancel)
        ],
      ),
    );
  }
}

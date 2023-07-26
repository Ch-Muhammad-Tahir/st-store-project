import 'package:flutter/material.dart';
import 'package:st_store/models/product.dart';
import 'package:st_store/views/home_page_screen/home_page_screen_widgets/all_product_tile_view.dart';

class CustomAllProductGridView extends StatelessWidget {
  final List<Product> products;
  const CustomAllProductGridView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: const BouncingScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 250,
            childAspectRatio: 8 / 7,
            crossAxisSpacing: 20,
            mainAxisExtent: 245,
            mainAxisSpacing: 20),
        //scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return AllProductsListTile(
            product: products[index],
          );
        },
        itemCount: products.length);
  }
}

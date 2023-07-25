import 'package:flutter/material.dart';
import 'package:st_store/models/product.dart';
import 'package:st_store/views/home_page_screen/home_page_screen_widgets/product_tile_view.dart';
import 'package:st_store/widgets/custom_sized_box.dart';

class CustomCategoriesProductListView extends StatelessWidget {
  List<Product> products;
  CustomCategoriesProductListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomProdutViewTile(
            product: products[index],
          );
        },
        separatorBuilder: (context, index) {
          return const CustomSizedBox(
            width: 10,
          );
        },
        itemCount: products.length);
  }
}

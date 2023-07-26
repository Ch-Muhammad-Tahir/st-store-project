import 'package:flutter/material.dart';
import 'package:st_store/models/product.dart';
import 'package:st_store/views/categories_v1/categories_screen_widgets/category_view_item_tiles.dart';
import 'package:st_store/widgets/custom_sized_box.dart';

class CategoriesListViewBuider extends StatelessWidget {
  final List<Product> products;
  const CategoriesListViewBuider({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return CategoryViewItemTile(
            product: products[index],
          );
        },
        separatorBuilder: (context, index) {
          return const CustomSizedBox(
            height: 10,
          );
        },
        itemCount: products.length);
  }
}

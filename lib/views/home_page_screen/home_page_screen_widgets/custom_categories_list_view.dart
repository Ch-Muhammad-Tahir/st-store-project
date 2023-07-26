import 'package:flutter/material.dart';
import 'package:st_store/models/product.dart';
import 'package:st_store/views/home_page_screen/home_page_screen_widgets/product_tile_view.dart';
import 'package:st_store/widgets/custom_sized_box.dart';

import '../../categories_v1/categories_screen_widget.dart';

class CustomCategoriesProductListView extends StatelessWidget {
  final List<Product> products;
  const CustomCategoriesProductListView({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return CustomProdutViewTile(
            callback: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => CategoriesScreenWidget(
                          product: products[index],
                        )),
              );
            },
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

import 'package:flutter/material.dart';
import 'package:st_store/models/product.dart';
import 'package:st_store/views/search_screens/search_screen_widgets/custom_search_view_tile.dart';

import '../search_screen_show_items.dart';

class CustomSearchListViewBuilder extends StatelessWidget {
  final List<Product> products;
  const CustomSearchListViewBuilder({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return CustomSearchViewTile(
            product: products[index],
          );
        },
        separatorBuilder: (context, index) {
          return const Divider(
            thickness: 1,
          );
        },
        itemCount: products.length);
  }
}

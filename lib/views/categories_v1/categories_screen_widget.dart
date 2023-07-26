import 'package:flutter/material.dart';
import 'package:st_store/models/product.dart';
import 'package:st_store/utils/colors/app_colors.dart';
import 'package:st_store/utils/common_screen_strings.dart';
import 'package:st_store/views/categories_v1/categories_screen_widgets/categories_item_builder.dart';
import 'package:st_store/views/categories_v1/categories_screen_widgets/categories_name_list_builder.dart';
import 'package:st_store/views/categories_v1/categories_screen_widgets/custom_top_app_bar.dart';
import 'package:st_store/views/categories_v1/categories_screen_widgets/modal_bottom_sheet.dart';
import 'package:st_store/views/home_page_screen/home_page_screen_widget.dart';

import 'package:st_store/widgets/custom_sized_box.dart';

import '../home_page_screen/home_page_screen_widgets/product_tile_view.dart';

class CategoriesScreenWidget extends StatefulWidget {
  final Product product;
  const CategoriesScreenWidget({super.key, required this.product});
  final List<bool> isCheckedGender = const [true, false, false];
  @override
  State<CategoriesScreenWidget> createState() => _CategoriesScreenWidgetState();
}

class _CategoriesScreenWidgetState extends State<CategoriesScreenWidget> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
      child: Column(
        children: [
          CategoryScreenTopBar(
              onBackTab: () {
                Navigator.pop(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const HomePageScreenWidget()),
                );
              },
              productName: widget.product.productName,
              onFilterTab: () {
                //  print("Filter tab");
                onFilterTab(context);
              }),
          CustomProdutViewTile(
            callback: () {},
            product: widget.product,
            outerContaierHeight: 370,
            outerContaierWidth: double.infinity,
            innerontaierHeight: 240,
            innerontaierWidth: double.infinity,
            imageHeight: 245,
            imageWidth: 305,
            increasImageSize: true,
          ),
          const CustomSizedBox(
            height: 30,
          ),

          const SizedBox(height: 40, child: CategoriesListViewBuilder()),
          // CategoryViewItemTile(product: AppCommonStrings.products[3]),
          Expanded(
              child: CategoriesListViewBuider(
            products: AppCommonStrings.products,
          )),
        ],
      ),
    )));
  }

  void onFilterTab(BuildContext context) {
    {
      showModalBottomSheet<dynamic>(
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Wrap(children: [
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height * 0.55,
              //  width: double.infinity,
              // color: Colors.white,
              child: const CustomModelBottomWidget(),
            ),
          ]);
        },
      );
    }
  }
}

import 'package:flutter/material.dart';
import 'package:st_store/utils/common_assets.dart';
import 'package:st_store/utils/common_screen_strings.dart';
import 'package:st_store/views/home_page_screen/home_page_screen_widgets/all_product_grid_view.dart';
import 'package:st_store/views/home_page_screen/home_page_screen_widgets/custom_categories_list_view.dart';
import 'package:st_store/views/home_page_screen/home_page_screen_widgets/home_page_navbar.dart';
import 'package:st_store/widgets/custom_sized_box.dart';
import 'package:st_store/widgets/custom_text.dart';

import '../scan_screen/scan_screen_widget.dart';

class HomePageScreenWidget extends StatefulWidget {
  const HomePageScreenWidget({super.key});

  @override
  State<HomePageScreenWidget> createState() => _HomePageScreenWidgetState();
}

class _HomePageScreenWidgetState extends State<HomePageScreenWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: const Text("Home Page"),
        // ),
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20),
          child: Column(children: [
            Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ScanScreeWidget()),
                  );
                },
                icon: Image.asset(CommonAppAssets.topBar),
              ),
            ),
            const CustomText(text: "Browse by Categories"),
            SizedBox(
              height: 248,
              child: CustomCategoriesProductListView(
                  products: AppCommonStrings.products),
            ),
            const CustomSizedBox(height: 20),
            const CustomText(text: "Recommended for You"),
            const CustomSizedBox(height: 20),
            Expanded(
              child:
                  CustomAllProductGridView(products: AppCommonStrings.products),
            ),
          ]),
        ),
        bottomNavigationBar: const CustomButtomNavBar(),
      ),
    );
  }
}

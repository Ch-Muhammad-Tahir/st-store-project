import 'package:flutter/material.dart';
import 'package:st_store/views/search_screens/search_screen_widgets/custom_list_view_builder.dart';
import 'package:st_store/views/search_screens/search_screen_widgets/custom_search_view_tile.dart';
import 'package:st_store/widgets/custom_text.dart';

import '../../utils/common_screen_strings.dart';
import '../../widgets/custom_search_bar.dart';
import '../../widgets/custom_sized_box.dart';
import '../home_page_screen/home_page_screen_widgets/all_product_grid_view.dart';

class SearchScreenShowItem extends StatelessWidget {
  TextEditingController controller = TextEditingController();
  SearchScreenShowItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // CustomSearhBar(controller: controller, onTap: () {}),
        const CustomSizedBox(
          height: 30,
        ),
        const Divider(),
        const CustomText(text: "Recent Searches"),
        SizedBox(
          height: 320,
          child:
              CustomSearchListViewBuilder(products: AppCommonStrings.products),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 10),
          child: CustomText(text: "Popular  Searches"),
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child:
                CustomAllProductGridView(products: AppCommonStrings.products)),
      ],
    );
  }
}

import 'package:flutter/material.dart';

import '../../utils/common_screen_strings.dart';
import '../../widgets/custom_sized_box.dart';
import '../home_page_screen/home_page_screen_widgets/all_product_grid_view.dart';

class FoundedSearchItem extends StatelessWidget {
  const FoundedSearchItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CustomSizedBox(
          height: 30,
        ),
        const Divider(),
        const CustomSizedBox(
          height: 30,
        ),
        const Text("FOUND 50 RESULTS"),
        const CustomSizedBox(
          height: 10,
        ),
        SizedBox(
            height: MediaQuery.of(context).size.height,
            child:
                CustomAllProductGridView(products: AppCommonStrings.products))
      ],
    );
  }
}

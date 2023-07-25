import 'package:flutter/material.dart';
import 'package:st_store/models/product.dart';
import 'package:st_store/utils/colors/app_colors.dart';
import 'package:st_store/utils/common_screen_strings.dart';
import 'package:st_store/views/categories_v1/categories_screen_widgets/categories_item_builder.dart';
import 'package:st_store/views/categories_v1/categories_screen_widgets/categories_name_list_builder.dart';
import 'package:st_store/views/categories_v1/categories_screen_widgets/custom_top_app_bar.dart';

import 'package:st_store/widgets/custom_icon_text_button.dart';
import 'package:st_store/widgets/custom_sized_box.dart';

import '../home_page_screen/home_page_screen_widgets/product_tile_view.dart';

class CategoriesScreenWidget extends StatefulWidget {
  CategoriesScreenWidget({super.key});
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
              onBackTab: () {},
              productName: "SPEAKERS",
              onFilterTab: () {
                print("Filter tab");
                onFilterTab(context);
              }),
          CustomProdutViewTile(
            product: Product(
              AppCommonStrings.productName1,
              AppCommonStrings.productPrice2,
              "assets/🖼 Imput Image@2x.png",
              AppCommonStrings.productQuantity2,
            ),
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
      showModalBottomSheet<void>(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 600,
            //  width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.only(top: 56, left: 36, right: 36),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Gender',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CustomTextIconButton(
                          onTab: () {},
                          radius: 10,
                          color: AppCommonColors.yelloButtonColor,
                          buttonText: "Men"),
                      CustomTextIconButton(
                          onTab: () {},
                          radius: 10,
                          color: AppCommonColors.yelloButtonColor,
                          buttonText: "Woman"),
                      CustomTextIconButton(
                          onTab: () {},
                          radius: 10,
                          color: AppCommonColors.yelloButtonColor,
                          buttonText: "Both"),
                    ],
                  ),
                  const Divider(thickness: 1),
                  const Text(
                    'Price Range',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: CustomTextIconButton(
                        onTab: () {},
                        radius: 10,
                        color: AppCommonColors.yelloButtonColor,
                        buttonText: "Min",
                      )),
                      const CustomSizedBox(
                        width: 10,
                      ),
                      Expanded(
                          child: CustomTextIconButton(
                              onTab: () {},
                              radius: 10,
                              color: AppCommonColors.yelloButtonColor,
                              buttonText: "Max")),
                    ],
                  ),

                  Container(
                    height: 80,
                    width: double.infinity,
                    color: Colors.black12,
                    child: ListView.separated(
                      itemBuilder: (context, index) {
                        return Container(
                          height: 75,
                          width: 75,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.amber,
                          ),
                        );
                      },
                      itemCount: 8,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 20,
                        );
                      },
                    ),
                  )
                  // SizedBox(
                  //   height: 50,
                  //   child: ListView.separated(
                  //       scrollDirection: Axis.horizontal,
                  //       itemBuilder: (context, index) {
                  //         return Checkbox(

                  //             checkColor: Colors.amber,
                  //             activeColor: Colors.red,
                  //             value: true,
                  //             onChanged: (val) {
                  //               setState(() {
                  //                 widget.changeColor = val;
                  //               });
                  //             });
                  //       },
                  //       separatorBuilder: (context, index) {
                  //         return const SizedBox(
                  //           width: 10,
                  //         );
                  //       },
                  //       itemCount: 5),
                  // )
                ],
              ),
            ),
          );
        },
      );
    }
  }
}

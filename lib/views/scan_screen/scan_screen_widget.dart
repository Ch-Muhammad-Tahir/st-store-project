import 'package:flutter/material.dart';
import 'package:st_store/utils/common_assets.dart';
import 'package:st_store/views/scan_screen/scan_screen_widgets/custom_container.dart';
import 'package:st_store/views/scan_screen/scan_screen_widgets/custom_product_view_details.dart';

class ScanScreeWidget extends StatelessWidget {
  const ScanScreeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(CommonAppAssets.sacnBackGround),
                fit: BoxFit.fill)),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Image.asset(CommonAppAssets.sacnRactangle),
            Positioned(
                top: 50,
                left: 50,
                child: CustomScanContainerWidget(
                  height: 40,
                  width: 40,
                  imagePath: CommonAppAssets.sacnCancel,
                )),
            Positioned(bottom: 50, child: CustomProductViewDetailsWidiget())
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:st_store/utils/common_assets.dart';

class CategoryScreenTopBar extends StatelessWidget {
  final VoidCallback onFilterTab;
  final VoidCallback onBackTab;
  final String productName;
  const CategoryScreenTopBar(
      {super.key,
      required this.productName,
      required this.onFilterTab,
      required this.onBackTab});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
            onTap: onBackTab, child: Image.asset(CommonAppAssets.backArrow)),
        Expanded(
          child: Text(
            productName,
            textAlign: TextAlign.center,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        InkWell(
            onTap: onFilterTab, child: Image.asset(CommonAppAssets.options)),
      ],
    );
  }
}

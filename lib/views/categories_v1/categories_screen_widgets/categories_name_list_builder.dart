import 'package:flutter/material.dart';

class CategoriesListViewBuilder extends StatelessWidget {
  final List<String> categoriesNameList = const [
    "View All",
    "Portable",
    "Multi Room",
    "Architectural",
    "New Items",
    "Check Items"
  ];
  const CategoriesListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Text(
            categoriesNameList[index],
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 20,
          );
        },
        itemCount: categoriesNameList.length);
  }
}

import 'package:flutter/material.dart';
import 'package:st_store/views/search_screens/founded_search_item.dart';
import 'package:st_store/views/search_screens/search_screen_show_items.dart';
import 'package:st_store/views/search_screens/search_screen_widgets/custom_list_view_builder.dart';
import 'package:st_store/widgets/custom_sized_box.dart';

import '../../utils/common_screen_strings.dart';
import '../../widgets/custom_search_bar.dart';
import '../home_page_screen/home_page_screen_widgets/all_product_grid_view.dart';

class SearchScreenView extends StatefulWidget {
  late bool isSearched = false;

  SearchScreenView({super.key});

  @override
  State<SearchScreenView> createState() => _SearchScreenViewState();
}

class _SearchScreenViewState extends State<SearchScreenView> {
  // late FocusNode focusNode;
  @override
  void initState() {
    // focusNode = FocusNode();
    super.initState();
  }

  @override
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    print("First ${widget.isSearched}");
    return GestureDetector(
      onTap: () {
        widget.isSearched = false;
        setState(() {
          print("GusterDector ${widget.isSearched}");
          widget.isSearched != widget.isSearched;
        });
      },
      child: SafeArea(
        child: Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 35, right: 35, top: 20),
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomSearhBar(
                  onTap: () {
                    print("OnTab Pressed!");
                    widget.isSearched = true;
                    setState(() {
                      print("GusterDector ${widget.isSearched}");
                      widget.isSearched != widget.isSearched;
                    });
                  },
                  controller: controller,
                  // node: focusNode,
                ),
                widget.isSearched ? SearchScreenShowItem() : FoundedSearchItem()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

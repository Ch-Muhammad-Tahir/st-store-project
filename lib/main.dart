import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:st_store/views/categories_v1/categories_screen_widget.dart';
import 'package:st_store/views/scan_screen/scan_screen_widget.dart';
import 'package:st_store/views/search_screens/seach_screen_view_items.dart';
import 'package:st_store/views/search_screens/search_screen_show_items.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(textTheme: GoogleFonts.dmSansTextTheme()),
    home: CategoriesScreenWidget(),
  ));
}

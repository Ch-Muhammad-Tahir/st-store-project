import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:st_store/views/onboarding_screen/onboarding_screen_widget.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(textTheme: GoogleFonts.dmSansTextTheme()),
    home: OnBoardingScreenWidget(),
  ));
}

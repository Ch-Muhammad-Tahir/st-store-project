import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../views/onboarding_screen/onboarding_screen_widget.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    theme: ThemeData(textTheme: GoogleFonts.dmSansTextTheme()),
    home: const OnBoardingScreenWidget(),
  ));
}

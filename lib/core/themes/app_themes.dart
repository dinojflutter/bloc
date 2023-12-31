import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Constants/my_colors.dart';

class MyThemes {
  static final light = ThemeData(
    colorScheme: ColorScheme.fromSeed(seedColor: MyColors.primaryColor),
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );

  static final dark = ThemeData(
    colorScheme:
        ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 0, 0, 0)),
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
  );
}

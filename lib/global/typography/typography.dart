import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:task_app/global/constants/app_colors.dart';

class AppTypoGraphy {
  static const family_1 = 'Lato';
  static const family_2 = 'Poppins';

  String get family1 => family_1;

  String get family2 => family_2;

  Future<void> loadFonts() async {
    await GoogleFonts.pendingFonts(
      [
        GoogleFonts.getFont(family1),
        GoogleFonts.getFont(family2),
      ],
    );
  }

  static TextStyle getTextStyle({
    String family = family_2,
    double fontSize = 16,
    FontWeight weight = FontWeight.w400,
    Color color = AppColors.black,
  }) =>
      GoogleFonts.getFont(
        family,
        fontSize: fontSize,
        fontWeight: weight,
        color: color,
      );
}

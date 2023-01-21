import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CollorPallet {
  static const Color primaryColor = Color(0xFF16BAC5);
  static const Color accentColor = Color(0xFF5FBFF9);
  static const Color buttonColor = Color(0xFF171D1C);
  static const Color textColor = Color(0xFFF0EDEC);
}

Map<int, Color> primaryColorCodes =const  {
  50: Color.fromRGBO(255, 22, 186, .1),
  100: Color.fromRGBO(255, 22, 186, .2),
  200: Color.fromRGBO(255, 22, 186, .3),
  300: Color.fromRGBO(255, 22, 186, .4),
  400: Color.fromRGBO(255, 22, 186, .5),
  500: Color.fromRGBO(255, 22, 186, .6),
  600: Color.fromRGBO(255, 22, 186, .7),
  700: Color.fromRGBO(255, 22, 186, .8),
  800: Color.fromRGBO(255, 22, 186, .9),
  900: Color.fromRGBO(255, 22, 186, 1),
};
//

ThemeData themeData = ThemeData(
  primaryColor: CollorPallet.primaryColor,
  primarySwatch: MaterialColor(0xFF16BAC5, primaryColorCodes),
  textTheme: TextTheme(
    bodyLarge: GoogleFonts.poppins(
      color: CollorPallet.textColor,
      fontSize: 18,
    ),
    bodySmall: GoogleFonts.poppins(
      color: CollorPallet.textColor,
      fontSize: 12,
    ),
    bodyMedium: GoogleFonts.poppins(
      color: CollorPallet.textColor,
      fontSize: 16,
    ),
  ),
);

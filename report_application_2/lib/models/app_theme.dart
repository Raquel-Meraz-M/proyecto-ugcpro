import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  //variable statica global para el color (primario) base de app

  static const Color primary = Color.fromARGB(255, 8, 13, 71);

  // ignore: non_constant_identifier_names
  static final ThemeData TemaApp = ThemeData(

    textTheme: GoogleFonts.emilysCandyTextTheme(),
    scaffoldBackgroundColor: const Color.fromARGB(255, 205, 231, 245), 

    //AppBAr theme
    appBarTheme: const AppBarTheme(
      elevation: 10,
      backgroundColor: primary,
      centerTitle: true,
      titleTextStyle: TextStyle(color: Colors.white, fontSize: 25)
    ),
    

    //para el boton flotante
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary, elevation: 30),
  );
}


import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;
  static const Color second = Colors.blueAccent;
  static const Color third = Colors.amberAccent;
  static const Color fourth = Colors.orange;
  static const Color fifth = Colors.black87;
  static const Color sixted = Colors.redAccent;
  static const Color sevenly = Colors.white;
  static const Color eigth = Colors.blueGrey;
  //Tema  luminoso
  static final ThemeData lighTheme = ThemeData.light().copyWith(
      primaryColor: Colors.amberAccent,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));
  //Tema oscuro
  static final ThemeData darkTheme = ThemeData.light().copyWith(
      primaryColor: Colors.indigo[900],
      scaffoldBackgroundColor: Colors.black87,
      appBarTheme: const AppBarTheme(color: fourth, elevation: 0),
      //TextButton
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(primary: Colors.amber)),
      //Boton floatante
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: second,
        elevation: 0,
      ),
      //ElevatedButton
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              primary: fourth,
              shadowColor: fourth,

              //shape: const StadiumBorder(),
              elevation: 30)),

      //estilo para inputs
      inputDecorationTheme: const InputDecorationTheme(
        fillColor: Color.fromARGB(255, 219, 180, 129),
        filled: true,
        floatingLabelStyle: TextStyle(color: sixted),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: fourth),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomRight: Radius.circular(10),
            )),
        focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: fourth),
            borderRadius: BorderRadius.only(
              //topLeft: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              //bottomRight: Radius.circular(10),
            )),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        )),
      ));
}

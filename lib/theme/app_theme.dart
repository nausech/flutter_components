

import 'package:flutter/material.dart';

class AppTheme {

  static const Color primary = Colors.green;
  static final ThemeData lightTheme =  ThemeData.light().copyWith(
      primaryColor: primary,
      //app bar color theme
      appBarTheme: const AppBarTheme(
        color: primary
      ),
      //Text color buttom theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary)
      ),
      // color floating action
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary
      ),
      //elevating button 
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primary,
          shape:  const StadiumBorder(),
          elevation: 0,
        )
      )
  );

  static final ThemeData darkTheme =  ThemeData.dark().copyWith(

      primaryColor: primary,
      //app bar color theme
      appBarTheme: const AppBarTheme(
        color: primary
      ),
      // input decoration theme
      inputDecorationTheme: const InputDecorationTheme(
        floatingLabelStyle: TextStyle(color: primary),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide( color: primary),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), topRight: Radius.circular(10))
        ),
      ),
      //Text color buttom theme
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary)
      ),
      // color floating action
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 0
      ),
      //elevating button 
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: primary,
          shape:  const StadiumBorder(),
          elevation: 0,
        )
      )
  );
  

}
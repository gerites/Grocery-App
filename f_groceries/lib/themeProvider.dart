import 'package:f_groceries/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'supplemental/cut_corners_border.dart';


ThemeData buildTheme(CURRENT_STORE) {
  switch (CURRENT_STORE) {
    case 'SAMPOORNA': {
      final ThemeData base =ThemeData.light();
      return base.copyWith(
        primaryColor: Colors.green,
        accentColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 35,
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryIconTheme: IconThemeData(
          color: Colors.white,
        ),
        buttonColor: Colors.green,
        buttonTheme: ButtonThemeData(
          shape: BeveledRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
          ),
        ).apply(
          fontFamily: 'Rubik'
        )
      );
    }

  case 'DFF': {
      final ThemeData base =ThemeData.light();
      return base.copyWith(
        primaryColor: Colors.blue,
        accentColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black,
          size: 35,
        ),
        scaffoldBackgroundColor: Colors.white,
        primaryIconTheme: IconThemeData(
          color: Colors.white,
        ),
        buttonColor: Colors.blue,
        buttonTheme: ButtonThemeData(
          shape: CutCornersBorder(
            borderRadius: BorderRadius.all(Radius.circular(15.0)),
          ),
        ),
        textTheme: TextTheme(
          title: TextStyle(
            color: Colors.white,
          ),
        )
      );
    }
      
    default:
      break;
  }
    
  }
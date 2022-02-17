import 'package:flutter/material.dart';
import 'package:samsung_clock_clone/config/palette.dart';

var theme = ThemeData(
    fontFamily: 'NanumBarunGothic',
    backgroundColor: Palette.mainColor,
    appBarTheme: const AppBarTheme(
        color: Palette.mainColor,
        titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)),
    textTheme: const TextTheme(
        // bodyText2: TextStyle(fontFamily: "NanumBarunGothic"),
        ));

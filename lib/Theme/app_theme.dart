import 'package:aa/Theme/asset_extension.dart';
import 'package:aa/colors/colors_dark.dart';
import 'package:aa/colors/colors_light.dart';
import 'package:aa/fonts/font_family_helper.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[
      MyAssets.dark, // ✅ تم إزالة التكرار هنا
    ],
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: ColorsDark.white,
        fontFamily: FontFamilyHelper.gelocalozedFontFamily(),
      ),
    ),
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,
    textTheme: TextTheme(
      displaySmall: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
        color: ColorsLight.white,
        fontFamily: FontFamilyHelper.gelocalozedFontFamily(),
      ),
    ),
  );
}

import 'package:aa/Theme/asset_extension.dart';
import 'package:aa/Theme/color_extension.dart';
import 'package:aa/colors/colors_dark.dart';
import 'package:aa/colors/colors_light.dart';
import 'package:flutter/material.dart';

ThemeData themeDark() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyAssets.dark,MyAssets.dark],
    useMaterial3: true,
  );
}

ThemeData themeLight() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    useMaterial3: true,
  );
}

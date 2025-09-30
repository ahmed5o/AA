import 'package:flutter/material.dart';

class MyColor extends ThemeExtension<MyColor> {
  MyColor({required this.mainColor});

  final Color? mainColor;
  @override
  ThemeExtension<MyColor> copyWith() {
    return MyColor(mainColor: mainColor);
  }

  @override
  ThemeExtension<MyColor> lerp(
    covariant ThemeExtension<MyColor>? other,
    double t,
  ) {
    if (other is! MyColor) {
      return this;
    }
    return MyColor(
      mainColor: Color.lerp(mainColor, other.mainColor, t),
    );
  }

  static MyColor dark = MyColor(mainColor: const Color(0xFF242C48));
  static MyColor light = MyColor(mainColor: const Color(0xffFFFFFF));
}

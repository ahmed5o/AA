import 'package:aa/Theme/asset_extension.dart';
import 'package:aa/Theme/color_extension.dart';
import 'package:aa/core/language/app_localization.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  MyColors get myColor => Theme.of(this).extension<MyColors>()!;

  MyAssets get myAssets => Theme.of(this).extension<MyAssets>()!;

  TextStyle get textStyle => Theme.of(this).textTheme.bodyMedium!;

  

  String translate(String key) {
    return AppLocalizations.of(this)!.translate(key) ?? key;
  }

  Future<dynamic> PushName(String routeName, {Object? arguments}) {
    return Navigator.of((this)).pushNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<void> pushReplacementName(String routeName, {Object? arguments}) {
    return Navigator.of((this)).pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  Future<dynamic> pushReplaceNameAndRemoveUntil(
    String routeName, {
    Object? arguments,
  }) {
    return Navigator.of((this)).pushNamedAndRemoveUntil(
      routeName,
      (route) => false,
      arguments: arguments,
    );
  }

  void pop() {
    Navigator.of(this).pop();
  }
}

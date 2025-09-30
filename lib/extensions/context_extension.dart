import 'package:aa/Theme/color_extension.dart';
import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  MyColor get myColor => Theme.of(this).extension<MyColor>()!;

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

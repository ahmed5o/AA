import 'package:aa/routes/test_one_screen.dart';
import 'package:aa/routes/test_two_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  static const String testOneScreen = 'test_one_screen';
  static const String testTwoScreen = 'test_two_screen';

  static Route<void> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case testOneScreen:
        return MaterialPageRoute(
          builder: (_) => const TestOneScreen(),
        );
      case testTwoScreen:
        return MaterialPageRoute(
          builder: (_) => const TestTwoScreen(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          ),
        );
    }
  }
}

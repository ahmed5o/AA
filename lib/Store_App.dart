import 'package:flutter/material.dart';

// ignore: camel_case_types
class Store_App extends StatelessWidget {
  const Store_App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Scaffold(body: Center(child: Text('Hello, World!'))),
    );
  }
}

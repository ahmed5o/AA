import 'package:aa/core/app/connectivity_controller.dart';
import 'package:aa/core/app/env.variable.dart';
import 'package:aa/screens/no_network_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, value, __) {
        // لو متصل يعرض التطبيق العادي
        if (value) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            child: MaterialApp(
              title: 'Store App',
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              theme: ThemeData(
                colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
              ),
              home: Scaffold(
                appBar: AppBar(
                  backgroundColor: Theme.of(context).colorScheme.inversePrimary,
                  title: const Text('Store App'),
                ),
              ),
            ),
          );
        }
        // لو مفيش نت يعرض شاشة NoNetwork
        else {
          return MaterialApp(
            title: 'No Network App',
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            ),
            home: const NoNetworkScreen(),
          );
        }
      },
    );
  }
}
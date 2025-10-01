import 'package:aa/Theme/app_theme.dart';
import 'package:aa/core/app/connectivity_controller.dart';
import 'package:aa/core/app/env.variable.dart';
import 'package:aa/core/language/app_localization_setup.dart';
import 'package:aa/routes/app_routes.dart';
import 'package:aa/screens/no_network_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, isConnected, __) {
        if (isConnected) {
          return ScreenUtilInit(
            designSize: const Size(375, 812),
            minTextAdapt: true,
            builder: (_, __) => MaterialApp(
              title: 'Store App',
              debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
              theme: themeDark(),
              locale: const Locale('ar'),
              supportedLocales: AppLocalizationsSetup.supportedLocales,
              localizationsDelegates:
                  AppLocalizationsSetup.localizationsDelegates,
              initialRoute: AppRoutes.testOneScreen,
              onGenerateRoute: AppRoutes.onGenerateRoute, 
            ),
            
          );
        } else {
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

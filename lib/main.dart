import 'dart:io';
import 'package:aa/MyApp.dart';
import 'package:aa/core/app/env.variable.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(EnvTypeEnum.dev);

  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: const FirebaseOptions(
            apiKey: 'AIzaSyAYZZLjuI_xbU54cKfVe_VaVldVS7CyMvs',
            appId: '1:685419312159:android:37d1f1cc8c7928cffe912a',
            messagingSenderId: '685419312159',
            projectId: 'aaaa-baf59',
          ),
        )
      : await Firebase.initializeApp();

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]).then(
    (_) {
      runApp(const MyApp());
    },
  );
}

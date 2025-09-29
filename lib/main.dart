import 'dart:io';
import 'package:aa/Store_App.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
            apiKey: 'AIzaSyD6BcQJrhgwEvHNhTLMZtCEXspjNAYHS9k',
            appId: '1:58922822889:android:22dbb88df7a9825dea5478',
            messagingSenderId: '58922822889',
            projectId: 'storeplus-f5bb3',
          ),
        )
      : await Firebase.initializeApp();
<<<<<<< HEAD
  await Firebase.initializeApp();
=======

  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  await ConnectivityController.instance.init();

>>>>>>> splach-screen
  runApp(const MyApp());
}

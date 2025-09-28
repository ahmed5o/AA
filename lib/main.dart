import 'dart:io';
import 'package:aa/MyApp.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Platform.isAndroid
      ? await Firebase.initializeApp(
          options: FirebaseOptions(
            apiKey: "AIzaSyAYZZLjuI_xbU54cKfVe_VaVldVS7CyMvs",
            appId: "1:685419312159:android:37d1f1cc8c7928cffe912a",
            messagingSenderId: "685419312159",
            projectId: "aaaa-baf59",
          ),
        )
      : await Firebase.initializeApp();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

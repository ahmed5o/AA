import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConnectivityController {
  ConnectivityController._();

  static final ConnectivityController instance = ConnectivityController._();

  // الحالة العامة للاتصال
  ValueNotifier<bool> isConnected = ValueNotifier(true);

  Future<void> init() async {
    // فحص مبدئي لحظة تشغيل الأب
    final initial = await Connectivity().checkConnectivity();
    _updateConnection(initial);

    // استماع للتغيرات بعد كده
    Connectivity().onConnectivityChanged.listen(_updateConnection);
  }

  void _updateConnection(List<ConnectivityResult> results) {
    final hasConnection = results.any(
      (r) => r == ConnectivityResult.mobile || r == ConnectivityResult.wifi,
    );
    isConnected.value = hasConnection;
  }
}

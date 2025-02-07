import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  StreamSubscription<ConnectivityResult>? _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  /// Initialize the network manager and set up a stream to continually check the connection status
  @override
  void onInit() {
    super.onInit();
    startMonitoring();
  }

  startMonitoring() async {
    _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  /// Update the connection status based on changes in connectivity and show a relevant popup for no internet connection
  Future<void> _updateConnectionStatus(List <ConnectivityResult> result) async {
    _connectionStatus.value = result.first;
    if(_connectionStatus.value == ConnectivityResult.none){
      // SiajToasts.warningSnackBar(title: "No Internet Connection");
      print("No Internet");
    }
  }

  /// Check the internet connection status
/// Returns `true` if connected | 'false' no connected
 Future<bool> isConnected() async {
    try{
      final result = await _connectivity.checkConnectivity();
      if(result.first == ConnectivityResult.none){
        return false;
      } else{
        return true;
      }
    } on PlatformException catch(_){
      return false;
    }
 }

 /// Dispose or close the active connectivity stream
 @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    _connectivitySubscription!.cancel();
  }


}
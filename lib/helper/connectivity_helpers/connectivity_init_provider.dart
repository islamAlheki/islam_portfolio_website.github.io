import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'dart:developer' as developer;

import 'package:islam_portfolio/helper/connectivity_helpers/connectivity_update_helper.dart';



class ConnectivityInitProvider extends ChangeNotifier{
  bool hasConnection=false;
  String connectionName="offline";
  ConnectivityResult connectionStatus = ConnectivityResult.none;
  final Connectivity connectivity = Connectivity();


  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {

      result = await connectivity.checkConnectivity();
      connectionStatus = result;
      setConnectionStatus(result);
      if (kDebugMode) {
        print("initConnectivity connection Status name = ${connectionStatus.name}");
        print("initConnectivity connection Status index = ${connectionStatus.index}");
      }
      StreamSubscription<ConnectivityResult> _connectivitySubscription = connectivity.onConnectivityChanged.listen(updateConnectionStatus);
      if (kDebugMode) {
        print(_connectivitySubscription.hashCode);
      }
    } on PlatformException catch (e) {
      developer.log(' check connectivity status', error: e);
      return;
    }
  }

  Future<void> updateConnectionStatus(ConnectivityResult result,) async {
    connectionStatus = result;
    setConnectionStatus(result);
    notifyListeners();
    ConnectionChangesProvider.connectionUpdatedListener();
    if (kDebugMode) {
      print("updated connection Status name = ${connectionStatus.name}");
      print("updated connection Status index= ${connectionStatus.index}");
    }
  }



  setConnectionStatus(ConnectivityResult result){
    switch (result.index){
      case 1:
        hasConnection=true;
        connectionName="wifi";
        break;
      case 3:
        hasConnection=true;
        connectionName="cellular";
        break;
      case 4:
        hasConnection=false;
        connectionName="offline";
        break;
      default:
        hasConnection=false;
        connectionName="offline";
    }
    if (kDebugMode) {
      print("hasConnection = $hasConnection");
      print("connectionName= $connectionName");
    }
  }
}
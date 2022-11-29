
import 'package:flutter/foundation.dart' show kDebugMode, kIsWeb;
import 'dart:io';

class DeviceAppInformation{

  static late String platform='';
  static late String deviceLanguageCode='ar';

  static getDevicePlatform(){
    if (kIsWeb) {
      platform= 'web';
    }
    else{
      if(Platform.isAndroid){
        platform= 'android';
      }
      else if(Platform.isIOS){
        platform= 'ios';
      }
    }
    if (kDebugMode) {
      print('platform type is $platform');
    }
  }

  static getDeviceLanguageCode()async{
    deviceLanguageCode= Platform.localeName.toString()[0]+Platform.localeName.toString()[1];
    if (kDebugMode) {
      print('device Language Code is $deviceLanguageCode');
    }

  }

}




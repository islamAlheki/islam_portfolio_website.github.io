import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:islam_portfolio/helper/popup_helpers/show_popup_functions.dart';
import 'package:islam_portfolio/main.dart';

class PermissionHandlerProvider {

  static Future askCameraPermission() async {
    var status = await Permission.camera.status;
    final permissionStatus = await Permission.camera.request();
    if (status.isGranted) {
      if (kDebugMode) {
        print("-------permissionStatus.isGranted");
      }
    }
    else if (status.isPermanentlyDenied) {
      if (kDebugMode) {
        print("---is permissionStatus.isPermanentlyDenied");
      } // maybe error at initial status
      ShowPopUpFunctions.showDefaultAlert(
        context: IslamPortfolio.navigatorKey.currentState!.context,
        hideWhenTap: true,
        withTwoButton:false ,
        twoOnTap:(){} ,
        twoButtonName: '',
        titleText: 'permissionPopUpTitle',
        descriptionText: 'permissionCameraDesc',
        oneButtonName: 'settings',
        withCloseButton: true,
        oneOnTap: ()async{
          Navigator.pop(IslamPortfolio.navigatorKey.currentState!.context);
          openAppSettings();
        },
      );


    }
    else if (status.isDenied) {
      if (kDebugMode) {
        print("---permissionStatus.isDenied");
      }
    }
    else {
      if (kDebugMode) {
        print(permissionStatus.toString());
      }
    }
  }

  static Future askGalleryPermission()async{
    var status = await Permission.photos.status;
    final permissionStatus = await Permission.photos.request();
    if (status.isGranted) {
      if (kDebugMode) {
        print("-------permissionStatus.isGranted");
      }
    }
    else if (status.isPermanentlyDenied) {
      if (kDebugMode) {
        print("---is permissionStatus.isPermanentlyDenied");
      } // maybe error at initial status
      ShowPopUpFunctions.showDefaultAlert(
        context: IslamPortfolio.navigatorKey.currentState!.context,
        hideWhenTap: true,
        withTwoButton:false ,
        twoOnTap:(){} ,
        twoButtonName: '',
        titleText: 'permissionPopUpTitle',
        descriptionText: 'permissionGalleryDesc',
        oneButtonName: 'settings',
        withCloseButton: true,
        oneOnTap: ()async{
          Navigator.pop(IslamPortfolio.navigatorKey.currentState!.context);
          openAppSettings();
        },
      );


    }
    else if (status.isDenied) {
      if (kDebugMode) {
        print("---permissionStatus.isDenied");
      }
    } else {
      if (kDebugMode) {
        print(permissionStatus.toString());
      }
    }
  }

}





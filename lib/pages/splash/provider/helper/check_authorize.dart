import 'package:flutter/foundation.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:islam_portfolio/helper/routes_handler/material_navigation.dart';
import 'package:islam_portfolio/helper/shared_preference.dart';
import 'package:islam_portfolio/main.dart';
import 'package:islam_portfolio/pages/main_page/view/main_page.dart';
import 'package:islam_portfolio/pages/single_app/view/single_app_screen.dart';


class CheckAuthorizeUser{

  /// check if have token saved in local storage
  static checkAuthorize()async{


    await Future.delayed(const Duration(seconds: 2));

    // UserDataFromStorage.setToken('null');
    // UserDataFromStorage.setToken('eyJhbGciOiJodHRwOi8vd3d3LnczLm9yZy8yMDAxLzA0L3htbGRzaWctbW9yZSNobWFjLXNoYTI1NiIsInR5cCI6IkpXVCJ9.eyJVc2VySWQiOiIxMDUyIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6ItmF2K3ZhdivINi52KjYr9in2YTZhNmHICIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL2VtYWlsYWRkcmVzcyI6Im1vaGFtZWQ3MTE4OEBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy54bWxzb2FwLm9yZy93cy8yMDA1LzA1L2lkZW50aXR5L2NsYWltcy9tb2JpbGVwaG9uZSI6IjAxMDk5MjM3ODAzIiwiZXhwIjoxNjM5OTk1ODg5LCJpc3MiOiJ3d3cuSUJTLm5ldCIsImF1ZCI6Ind3dy5JQlMubmV0In0.bxzMigRKGo4lk4aM9r6oJk8W2QBb1usZW7ibqvLTaqY');

    if (kDebugMode) {
      print('storage is ['
          'token = ${UserDataFromStorage.userTokenFromStorage}] '
          'language = ${UserDataFromStorage.userPhoneTypeFromStorage}] '
          'userIsGuest = ${UserDataFromStorage.userIsGuest},'
          'firstTime = ${UserDataFromStorage.firstTime},'
          'language code = ${UserDataFromStorage.languageCodeFromStorage},'
          'language name = ${UserDataFromStorage.languageNameFromStorage},'
          'loginByEmailOrPhone = ${UserDataFromStorage.loginByEmailOrPhoneFromStorage},'
          'rememberMeEmail = ${UserDataFromStorage.rememberMeEmailFromStorage},'
          'rememberMePhone = ${UserDataFromStorage.rememberMePhoneFromStorage},'
          'userCurrencyCode = ${UserDataFromStorage.userCurrencyCodeFromStorage},'
          'user country = ${UserDataFromStorage.userCountryNameFromStorage},'
          'user city = ${UserDataFromStorage.userCityNameFromStorage},'
          'user email = ${UserDataFromStorage.userEmileFromStorage},'
          'user phone = ${UserDataFromStorage.phoneNumberFromStorage},'
          'user name = ${UserDataFromStorage.usernameFromStorage},'
          'user image = ${UserDataFromStorage.userImageFromStorage},'
      );
    }
    if(UserDataFromStorage.userTokenFromStorage!='null'){
      customPushAndRemoveUntil(IslamPortfolio.navigatorKey.currentState!.overlay!.context,const MainPage());
    }
    else{
      customPushAndRemoveUntil(IslamPortfolio.navigatorKey.currentState!.overlay!.context, const MainPage());
    }
    // FlutterNativeSplash.remove();

  }
}
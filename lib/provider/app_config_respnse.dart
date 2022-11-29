import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:islam_portfolio/pages/splash/model/app_config_model.dart';

class AppConfigResponse{


  // Register api
  getAppConfigResponse()async{

    final String response = await rootBundle.loadString('assets/app_setting_json.json');
    var jsonObj = json.decode(response);
    
    // print("app config data is ${jsonObj.toString()}");
    AppConfigModel loginModel = AppConfigModel.fromJson(jsonObj);
    return loginModel;
  }


}


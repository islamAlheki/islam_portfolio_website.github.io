import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/info_helpers/device_app_helper.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:open_store/open_store.dart';

class LauncherHelperProvider extends ChangeNotifier{

  openStore({required String appStoreId,required String androidAppBundleId,}){
    OpenStore.instance.open(
      appStoreId: appStoreId,
      androidAppBundleId: androidAppBundleId,
    );
  }

  /// open url on browser
  Future<void> openUrlOnBrowser({required String url}) async {
    try {
      await launch(url, forceSafariVC: false);
      if (kDebugMode) {
        print("Launched browser $url");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Inside catch");
      }
    }
  }

  /// call phone
  Future<void> makeCallFunc({required BuildContext context,required String phoneNumber,}) async {
    if (kDebugMode) {
      print(phoneNumber);
    }
    launch("tel://${phoneNumber.toString()}");
  }
  /// whatsapp
  Future<void> sendWhatsappFunc({required BuildContext context,required String phoneNumber,required String msgWillSend,}) async {
    var url = 'https://api.whatsapp.com/send?phone=$phoneNumber&text=$msgWillSend';
    // ignore: avoid_print
    await canLaunch(url)? launch(url):print("open whatsapp app link or do a sandbar with notification that there is no whatsapp installed");
  }
  /// email
  Future<void> sendEmailFunc({required BuildContext context,required String email,}) async {
    if (kDebugMode) {
      print(email);
    }
    String finalUrl='';

    launch("mailto:${email.toString()}?subject=Hi&body=How are you");

    if (DeviceAppInformation.platform=='android') {
      finalUrl = "mailto:$email?subject= &body= ";
    }
    else if (DeviceAppInformation.platform=='ios') {
      finalUrl = "mailto:$email";
    }
    else{
      finalUrl = "mailto:$email";
    }
    notifyListeners();
    try {
      await launch(finalUrl);
      if (kDebugMode) {
        print("Launched ");
      }
    } catch (e) {
      if (kDebugMode) {
        print("Inside catch");
      }
    }


  }

  /// instagram
  Future<void> launchInstagram({required String profileUrl,}) async {
    var url = 'https://www.instagram.com/$profileUrl';

    notifyListeners();
    try {
      bool launched = await launch(url, forceSafariVC: false);
      if (kDebugMode) {
        print("Launched Native app $launched");
      }
      if (!launched) {
        await launch(url, forceSafariVC: false);
        if (kDebugMode) {
          print("Launched browser $launched");
        }
      }
    } catch (e) {
      await launch(url, forceSafariVC: false);
      if (kDebugMode) {
        print("Inside catch");
      }
    }

  }
  /// Twitter
  Future<void> launchTwitter({required String profileUrl,}) async {
    var url = 'https://twitter.com/$profileUrl';
    try {
      bool launched = await launch(url, forceSafariVC: false);
      if (kDebugMode) {
        print("Launched Native app $launched");
      }
      if (!launched) {
        await launch(url, forceSafariVC: false);
        if (kDebugMode) {
          print("Launched browser $launched");
        }
      }
    } catch (e) {
      await launch(url, forceSafariVC: false);
      if (kDebugMode) {
        print("Inside catch");
      }
    }

  }
  /// snapchat
  Future<void> launchSnapChat({required String forMobileAppUrl, required String snWebUrl,}) async {

    String finalUrl="";

    if (DeviceAppInformation.platform=='android') {
      finalUrl = "https://www.snapchat.com/" + snWebUrl; //for android

    }
    else if (DeviceAppInformation.platform=='ios') {
      finalUrl = "https://www.snapchat.com/" + forMobileAppUrl;
    }
    else{
      finalUrl = "https://www.snapchat.com/" + forMobileAppUrl; //for android
    }

    notifyListeners();
    try {
      bool launched = await launch(finalUrl, forceSafariVC: false);
      if (kDebugMode) {
        print("Launched Native app $launched");
      }
      if (!launched) {
        await launch(snWebUrl, forceSafariVC: false);
        if (kDebugMode) {
          print("Launched browser $launched");
        }
      }
    } catch (e) {
      await launch(snWebUrl, forceSafariVC: false);
      if (kDebugMode) {
        print("Inside catch");
      }
    }




  }
  /// linkedIn
  Future<void> launchLinkedIn({required String forMobileAppUrl, required String snWebUrl,}) async {

    String finalUrl="";

    if (DeviceAppInformation.platform=='android') {
      finalUrl = "https://www.linkedin.com/in/" + forMobileAppUrl; //for android

    }
    else if (DeviceAppInformation.platform=='ios') {
      finalUrl = "https://www.linkedin.com/in/" + forMobileAppUrl;
    }
    else{
      finalUrl = "https://www.linkedin.com/in/" + snWebUrl; //for android
    }

    notifyListeners();
    try {
      bool launched = await launch(finalUrl, forceSafariVC: false);
      if (kDebugMode) {
        print("Launched Native app $launched");
      }
      if (!launched) {
        await launch(snWebUrl, forceSafariVC: false);
        if (kDebugMode) {
          print("Launched browser $launched");
        }
      }
    } catch (e) {
      await launch(snWebUrl, forceSafariVC: false);
      if (kDebugMode) {
        print("Inside catch");
      }
    }




  }


}

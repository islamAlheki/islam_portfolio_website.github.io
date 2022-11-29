import 'package:flutter/cupertino.dart';
import 'package:islam_portfolio/provider/launcher_helper_provider.dart';
import 'package:provider/provider.dart';

class IntroCardHelper extends ChangeNotifier{

  //on tap on lets talk button
  socialOnTap({required BuildContext context,required String buttonType,required String url,})async{
    final launcherCallProvider = Provider.of<LauncherHelperProvider>(context,listen: false);

    switch (buttonType){
      case 'email':
        launcherCallProvider.sendEmailFunc(context: context, email: url,);
        break;
      case 'whatsapp':
        launcherCallProvider.sendWhatsappFunc(context: context, msgWillSend: 'Hello',phoneNumber:url,);
        break;
      case 'linkedIn':
        launcherCallProvider.launchLinkedIn(snWebUrl: url,forMobileAppUrl: url );
        break;
      case 'twitter':
        launcherCallProvider.launchTwitter(profileUrl:url);
        break;
      case 'instagram':
        launcherCallProvider.launchInstagram(profileUrl:url);

        break;
    }
  }
}


import 'package:islam_portfolio/helper/popup_helpers/toast_helpers.dart';
import 'package:islam_portfolio/main.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/provider/public_providers.dart';

class PublicConnectionUpdated {

  static publicWhenConnectionUpdated(){
    if(PublicProviders.connectivityInitProvider.hasConnection){
      // connection back
      ShowToastFunctions.showPublicConnectionToast(
        context: IslamPortfolio.navigatorKey.currentState!.overlay!.context,
        connected: true,
        margin:SizeConfig.height*0.03,
        msg: 'online Connect',
      );

    }
    else{
      // show connection is not found
      ShowToastFunctions.showPublicConnectionToast(
        context: IslamPortfolio.navigatorKey.currentState!.overlay!.context,
        connected: false,
        margin:SizeConfig.height*0.03,
        msg: 'offline Connect',
      );
    }
  }

}
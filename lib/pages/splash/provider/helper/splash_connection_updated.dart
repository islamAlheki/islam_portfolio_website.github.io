
import 'package:islam_portfolio/pages/splash/provider/helper/check_connection_on_lunch.dart';
import 'package:islam_portfolio/provider/public_providers.dart';

class SplashConnectionUpdated {

  static splashWhenConnectionUpdated()async{
    if(PublicProviders.splashProvider.connectionCheckedBefore){
      CheckConnectionOnLunch.checkHaveConnectionOnLunch();
    }

  }

}
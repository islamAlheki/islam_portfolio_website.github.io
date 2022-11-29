


import 'package:islam_portfolio/helper/connectivity_helpers/public_connection_updated.dart';
import 'package:islam_portfolio/pages/splash/provider/helper/splash_connection_updated.dart';
import 'package:islam_portfolio/provider/public_providers.dart';

class ConnectionChangesProvider {

  static connectionUpdatedListener(){

    // check if in splash screen or not
    if(PublicProviders.splashProvider.isSplashScreen){
      SplashConnectionUpdated.splashWhenConnectionUpdated();
    }

    // in other screens
    else{
      PublicConnectionUpdated.publicWhenConnectionUpdated();
    }

  }

}

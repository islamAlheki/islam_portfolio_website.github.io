
import 'package:flutter/cupertino.dart';
import 'package:islam_portfolio/helper/info_helpers/device_app_helper.dart';
import 'package:islam_portfolio/provider/launcher_helper_provider.dart';
import 'package:provider/provider.dart';

class SingleAppHelper extends ChangeNotifier{

  downloadAppUrl({required BuildContext context,required String appStoreId,required String androidAppBundleId,required String webUrl,})async{
    final launcherProvider = Provider.of<LauncherHelperProvider>(context,listen: false);

    if(DeviceAppInformation.platform=='web'){
      launcherProvider.openUrlOnBrowser(url: webUrl.toString());
    }
    else{
      await launcherProvider.openStore(appStoreId: appStoreId, androidAppBundleId: androidAppBundleId);
    }

  }

}
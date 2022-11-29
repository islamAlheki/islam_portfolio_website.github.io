import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:islam_portfolio/helper/connectivity_helpers/connectivity_init_provider.dart';
import 'package:islam_portfolio/pages/about/provider/api/api_about_provider.dart';
import 'package:islam_portfolio/pages/home/provider/helper/intro_card_helper.dart';
import 'package:islam_portfolio/pages/home/provider/helper/today_chart_helper.dart';
import 'package:islam_portfolio/pages/main_page/provider/helper/main_scroll_helper.dart';
import 'package:islam_portfolio/pages/side_menu/provider/helper/side_menu_helper.dart';
import 'package:islam_portfolio/pages/single_app/provider/helper/single_app_helper.dart';
import 'package:islam_portfolio/pages/splash/provider/helper/splash_provider.dart';
import 'package:islam_portfolio/provider/app_setting_provider.dart';
import 'package:islam_portfolio/provider/launcher_helper_provider.dart';
import 'package:islam_portfolio/provider/loading_provider.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

final FirebaseFirestore firebaseFireStore = FirebaseFirestore.instance;

List<SingleChildWidget> providers = [
  ChangeNotifierProvider.value(value: MainScrollHelper()),
  ChangeNotifierProvider.value(value: SideMenuHelper()),
  ChangeNotifierProvider.value(value: LoadingProviderClass()),
  ChangeNotifierProvider.value(value: AppSettingProvider()),
  ChangeNotifierProvider.value(value: LauncherHelperProvider()),
  ChangeNotifierProvider.value(value: SplashProvider()),
  ChangeNotifierProvider.value(value: ConnectivityInitProvider()),
  ChangeNotifierProvider.value(value: IntroCardHelper()),
  ChangeNotifierProvider.value(value: SingleAppHelper()),
  ChangeNotifierProvider.value(value: TodayChartHelper()),
  ChangeNotifierProvider.value(value: ApiAboutProvider(
    firebaseFireStore:firebaseFireStore ,
  )),
];

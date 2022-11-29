import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam_portfolio/helper/shared_preference.dart';
import 'package:islam_portfolio/helper/thems_and_decorations/app_color_config.dart';
import 'package:islam_portfolio/pages/side_menu/provider/helper/side_menu_helper.dart';
import 'package:islam_portfolio/pages/splash/provider/helper/generate_public_providers.dart';
import 'package:islam_portfolio/pages/splash/view/splash_screen.dart';
import 'package:islam_portfolio/provider/app_setting_provider.dart';
import 'package:islam_portfolio/provider/app_size_config.dart';
import 'package:islam_portfolio/provider/loading_provider.dart';
import 'package:islam_portfolio/provider/multi_providers.dart';
import 'package:islam_portfolio/provider/public_providers.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:flutter_native_splash/flutter_native_splash.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await SharedPreferences.getInstance();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  // FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding,);

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);


  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      /// top status bar icon for ios color
      statusBarBrightness: Brightness.light,
      ///top status bar icon for android color
      statusBarIconBrightness: Brightness.dark,
      /// bottom bar button icon for android color
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarColor: Colors.transparent,
    ),
  );

  await UserDataFromStorage.getData();

  runApp(MultiProvider(
    providers: providers,
    child:const IslamPortfolio(),
  )
  );

}


class IslamPortfolio extends StatefulWidget {

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  const IslamPortfolio({Key? key, }) : super(key: key) ;

  @override
  _IslamPortfolioState createState() => _IslamPortfolioState();
}


class _IslamPortfolioState extends State<IslamPortfolio> with WidgetsBindingObserver {
  final currentStat = GlobalKey();
  bool isLogin=false;



  void myCallback(Function callback) {
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      callback();
    });
  }


  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {

    if (kDebugMode) {
      print("APP_STATE: $state");
    }

    if (state == AppLifecycleState.resumed) {

      if (kDebugMode) {
        print('on reswrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr');
      }
      WidgetsBinding.instance!.addPostFrameCallback((_)async{
        if(mounted){

        }
      });

      // user returned to our app
    } else if (state == AppLifecycleState.inactive) {

      if (kDebugMode) {
        print(' app is actevvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvvv');
      }
      // app is inactive
    } else if (state == AppLifecycleState.paused) {
      // user quit our app temporally
    }
  }


  @override
  void initState(){
    WidgetsBinding.instance!.addObserver(this);

    /// local notifications handle
    WidgetsBinding.instance!.addPostFrameCallback((_)async{
      if(mounted){
        GeneratePublicProviders.generatePublicProvidersOnLunch(context: context);
      }
    });
    // TODO: implement initState
    super.initState();
  }


  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final appSetting = Provider.of<AppSettingProvider>(context);
    PublicProviders.loadingProviderClass=Provider.of<LoadingProviderClass>(context,);
    PublicProviders.sideMenuProvider=Provider.of<SideMenuHelper>(context,);

    return MaterialApp(
      navigatorKey: IslamPortfolio.navigatorKey,
      title: 'Tshtri',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily:'Poppins',
        primaryColor: ColorConfig().appPrimaryColor(1),
        scaffoldBackgroundColor: ColorConfig().appScaffoldBackgroundColor(1),
        brightness: Brightness.light,
        colorScheme:ColorScheme.light(secondary:ColorConfig().appMainGreen1Color(1) ) ,
        dividerColor: ColorConfig().appDividerColor(1),
        cardColor: ColorConfig().appScaffoldBackgroundColor(1),
        bottomAppBarColor:ColorConfig().appScaffoldBackgroundColor(1),
        secondaryHeaderColor: ColorConfig().appScaffoldBackgroundColor(1),
        backgroundColor: ColorConfig().appScaffoldBackgroundColor(1),
        appBarTheme: AppBarTheme(
          backgroundColor: ColorConfig().appbarBackgroundColor(1),
        ),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: SizeConfig.headline1Size, fontWeight: FontWeight.bold,),//26px
          headline2: TextStyle(fontSize: SizeConfig.headline2Size, fontWeight: FontWeight.bold, ),//20px
          headline3: TextStyle(fontSize: SizeConfig.headline3Size, fontWeight: FontWeight.bold, ),//18px
          headline4: TextStyle(fontSize: SizeConfig.headline4Size, fontWeight: FontWeight.bold, ),//16px
          headline5: TextStyle(fontSize: SizeConfig.headline5Size, fontWeight: FontWeight.bold, ),//14px
          headline6: TextStyle(fontSize: SizeConfig.headline6Size, fontWeight: FontWeight.bold, ),//12px
          subtitle1: TextStyle(fontSize: SizeConfig.subtitle1Size, fontWeight: FontWeight.bold, ),//10px
        ),
      ),
      darkTheme:ThemeData(
        fontFamily:'Poppins',
        primaryColor: ColorConfig().appPrimaryColor(1),
        scaffoldBackgroundColor: ColorConfig().appScaffoldBackgroundColor(1),
        brightness: Brightness.dark,
        dividerColor: ColorConfig().appDividerColor(1),
        backgroundColor: ColorConfig().appScaffoldBackgroundColor(1),
        colorScheme:ColorScheme.dark(secondary:ColorConfig().appMainGreen1Color(1) ) ,
        appBarTheme: AppBarTheme(
          backgroundColor: ColorConfig().appbarBackgroundColor(1),
        ),
        cardColor: ColorConfig().appScaffoldBackgroundColor(1),
        bottomAppBarColor:ColorConfig().appScaffoldBackgroundColor(1),
        secondaryHeaderColor: ColorConfig().appScaffoldBackgroundColor(1),
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: SizeConfig.headline1Size, fontWeight: FontWeight.bold,),//26px
          headline2: TextStyle(fontSize: SizeConfig.headline2Size, fontWeight: FontWeight.bold, ),//20px
          headline3: TextStyle(fontSize: SizeConfig.headline3Size, fontWeight: FontWeight.bold, ),//18px
          headline4: TextStyle(fontSize: SizeConfig.headline4Size, fontWeight: FontWeight.bold, ),//16px
          headline5: TextStyle(fontSize: SizeConfig.headline5Size, fontWeight: FontWeight.bold, ),//14px
          headline6: TextStyle(fontSize: SizeConfig.headline6Size, fontWeight: FontWeight.bold, ),//12px
          subtitle1: TextStyle(fontSize: SizeConfig.subtitle1Size, fontWeight: FontWeight.bold, ),//10px
        ),
      ),
      themeMode: appSetting.theMode,
      home: const SplashScreenClass(),
      // onGenerateRoute: (settings) =>
      //     AppRouter.onGenerateRoute(settings, firebaseAuth),
    );

  }
}

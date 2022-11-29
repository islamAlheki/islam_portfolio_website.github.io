
import 'package:flutter/material.dart';

class SizeConfig extends StatelessWidget {
  final Widget? mobile;
  final Widget? tablet;
  final Widget? desktop;


  static late double width = MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.width;
  static late double height = MediaQueryData.fromWindow(WidgetsBinding.instance!.window).size.height;
  static late double bottomPadding = MediaQueryData.fromWindow(WidgetsBinding.instance!.window).viewPadding.bottom;
  static late double topPadding = MediaQueryData.fromWindow(WidgetsBinding.instance!.window).viewPadding.top;


  const SizeConfig({
    Key? key,
    this.mobile,
    this.tablet,
    this.desktop,
  }) : super(key: key);


  // This isMobile, isTablet, isDesktop help us later
  static bool isMobile(BuildContext context) => MediaQuery.of(context).size.width < 700;

  static bool isTablet(BuildContext context) => MediaQuery.of(context).size.width >= 700 && MediaQuery.of(context).size.width <= 1100;

  static bool isDesktop(BuildContext context) => MediaQuery.of(context).size.width >= 1100;

  static bool keyboardIsVisible() => WidgetsBinding.instance!.window.viewInsets.bottom> 0.0;



  //#region headline 1 Size
  static late double headline1Size = SizeConfig.height * 0.033 ; //26px
//#endregion

  //#region headline 2 Size
  static late double headline2Size = SizeConfig.height * 0.025; //20 px
//#endregion

  //#region headline 3 Size
  static late double headline3Size = SizeConfig.height * 0.021 ; //18 px
//#endregion

  //#region headline 4 Size
  static late double headline4Size = SizeConfig.height * 0.019 ; //16 px
//#endregion

  //#region headline 5 Size
  static late double headline5Size = SizeConfig.height * 0.016 ; //14 px
//#endregion

  //#region headline 6 Size
  static late double headline6Size = SizeConfig.height * 0.0135 ; //12 px
//#endregion

  //#region subtitle 1 Size
  static late double subtitle1Size = SizeConfig.height * 0.012 ; //10 px
//#endregion



  Widget build(BuildContext context) {
    final Size _size = MediaQuery.of(context).size;
    // If our width is more than 1100 then we consider it a desktop
    if (_size.width >= 1100) {
      return desktop!;
    }
    // If width it less then 1100 and more then 850 we consider it as tablet
    else if (_size.width >= 850 && tablet != null) {
      return tablet!;
    }
    // Or less then that we called it mobile
    else {
      return mobile!;
    }
  }


//#region sizes =
// print('width = ${SizeConfig.width * 0.03}');
// print('height = ${SizeConfig.height * 0.0139}');
///
// print('width = ${SizeConfig.width * 0.28}');
// print('height = ${SizeConfig.height * 0.1293}');
///
// print('width = ${SizeConfig.width * 0.27}');
// print('height = ${SizeConfig.height * 0.12475}');
///
// print('width = ${SizeConfig.width * 0.08}');
// print('height = ${SizeConfig.height * 0.037}');
///
///
// print('width = ${SizeConfig.width * 0.02}');
// print('height = ${SizeConfig.height * 0.00925}');
///
// print('width = ${SizeConfig.width * 0.5}');
// print('height = ${SizeConfig.height * 0.232}');
///
// print('width = ${SizeConfig.width *.88}');
// print('height = ${SizeConfig.height * 0.407}');
///
// print('width = ${SizeConfig.width *0.04}');
// print('height = ${SizeConfig.height * 0.0185}');
///
// print('width = ${SizeConfig.width *0.008}');
// print('height = ${SizeConfig.height * 0.0037}');
///
// print('width = ${SizeConfig.width*0.3}');
// print('height = ${SizeConfig.height * 0.139}');
///
// print('width = ${SizeConfig.width*0.37}');
// print('height = ${SizeConfig.height * 0.171}');
///
// print('width = ${SizeConfig.width*0.09}');
// print('height = ${SizeConfig.height * 0.0416}');
///
// print('width = ${SizeConfig.width * 0.035}');
// print('height = ${ SizeConfig.isTablet()}');
//#endregion
}

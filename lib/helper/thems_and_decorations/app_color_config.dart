import 'package:flutter/material.dart';
import 'package:islam_portfolio/helper/shared_preference.dart';
import 'package:islam_portfolio/provider/app_setting_provider.dart';
import 'package:islam_portfolio/provider/public_providers.dart';

class ColorConfig {
  static AppSettingProvider appConfig= PublicProviders.appSettingProvider;

  //#region main green colors

  Color appMainGreen1Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.mainColors.mainBlueColor:
      appConfig.appConfig.colors.lightMode.mainColors.mainBlueColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFF00A060).withOpacity(opacity);
    }
  }
  Color mainBoldOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.mainColors.mainBoldOrangeColor:
      appConfig.appConfig.colors.lightMode.mainColors.mainBoldOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFF00A060).withOpacity(opacity);
    }
  }
  Color mainCyanColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.mainColors.mainCyanColor:
      appConfig.appConfig.colors.lightMode.mainColors.mainCyanColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFF00A060).withOpacity(opacity);
    }
  }
  Color mainOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.mainColors.mainOrangeColor:
      appConfig.appConfig.colors.lightMode.mainColors.mainOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFF00A060).withOpacity(opacity);
    }
  }


  //#region app bar Background  colors
  Color appbarBackgroundColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.appBar.appbarBackground:
      appConfig.appConfig.colors.lightMode.appBar.appbarBackground).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFE9EDF2).withOpacity(opacity);
    }
  }
//#endregion

  //#region app Primary colors
  Color appPrimaryColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.primaryAndScaffold.primaryColor:
      appConfig.appConfig.colors.lightMode.primaryAndScaffold.primaryColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFE9EDF2).withOpacity(opacity);
    }
  }
//#endregion

  //#region app Scaffold Background colors
  Color appScaffoldBackgroundColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.primaryAndScaffold.scaffoldBackgroundColor:
      appConfig.appConfig.colors.lightMode.primaryAndScaffold.scaffoldBackgroundColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFE9EDF2).withOpacity(opacity);
    }
  }
//#endregion

  //#region appDivider  colors
  Color appDividerColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.divider.dividerColor:
      appConfig.appConfig.colors.lightMode.divider.dividerColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
//#endregion

  //#region app Fonts colors
  Color fontBlackColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontBlackColor:
      appConfig.appConfig.colors.lightMode.fonts.fontBlackColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color fontWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontWhiteColor:
      appConfig.appConfig.colors.lightMode.fonts.fontWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color fontBlueColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontBlueColor:
      appConfig.appConfig.colors.lightMode.fonts.fontBlueColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color fontBoldOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontBoldOrangeColor:
      appConfig.appConfig.colors.lightMode.fonts.fontBoldOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color fontCyanColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontCyanColor:
      appConfig.appConfig.colors.lightMode.fonts.fontCyanColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color fontGrey1Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontGrey1Color:
      appConfig.appConfig.colors.lightMode.fonts.fontGrey1Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color fontGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontGrey2Color:
      appConfig.appConfig.colors.lightMode.fonts.fontGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color fontGrey3Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontGrey3Color:
      appConfig.appConfig.colors.lightMode.fonts.fontGrey3Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color fontOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontOrangeColor:
      appConfig.appConfig.colors.lightMode.fonts.fontOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color fontRedColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.fonts.fontRedColor:
      appConfig.appConfig.colors.lightMode.fonts.fontRedColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

//#endregion

  //#region card background colors
  Color cardBlackColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardBlackColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardBlackColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color cardBlueColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardBlueColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardBlueColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color cardBoldOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardBoldOrangeColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardBoldOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color cardCyanColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardCyanColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardCyanColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color cardGreenColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardGreenColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardGreenColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color cardOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardOrangeColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color cardGrey1Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardGrey1Color:
      appConfig.appConfig.colors.lightMode.cardBackground.cardGrey1Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color cardGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardGrey2Color:
      appConfig.appConfig.colors.lightMode.cardBackground.cardGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color cardGrey3Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardGrey3Color:
      appConfig.appConfig.colors.lightMode.cardBackground.cardGrey3Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color cardWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.cardBackground.cardWhiteColor:
      appConfig.appConfig.colors.lightMode.cardBackground.cardWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }


//#endregion

  //#region button colors
  Color buttonBlackColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonBlackColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonBlackColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color buttonWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonWhiteColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color buttonGrey1Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonGrey1Color:
      appConfig.appConfig.colors.lightMode.buttons.buttonGrey1Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color buttonGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonGrey2Color:
      appConfig.appConfig.colors.lightMode.buttons.buttonGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color buttonGrey3Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonGrey3Color:
      appConfig.appConfig.colors.lightMode.buttons.buttonGrey3Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color buttonGreenColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonGreenColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonGreenColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color buttonBlueColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonBlueColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonBlueColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color buttonBoldOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonBoldOrangeColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonBoldOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color buttonOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonOrangeColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color buttonCyanColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.buttons.buttonCyanColor:
      appConfig.appConfig.colors.lightMode.buttons.buttonCyanColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
//#endregion

  //#region icon colors
  Color iconBlackColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconBlackColor:
      appConfig.appConfig.colors.lightMode.icons.iconBlackColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color iconWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconWhiteColor:
      appConfig.appConfig.colors.lightMode.icons.iconWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color iconGreyColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconGreyColor:
      appConfig.appConfig.colors.lightMode.icons.iconGreyColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color iconGrey2Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconGrey2Color:
      appConfig.appConfig.colors.lightMode.icons.iconGrey2Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color iconGrey3Color(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconGrey3Color:
      appConfig.appConfig.colors.lightMode.icons.iconGrey3Color).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

  Color iconGreenColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconGreenColor:
      appConfig.appConfig.colors.lightMode.icons.iconGreenColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color iconYellowColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconYellowColor:
      appConfig.appConfig.colors.lightMode.icons.iconYellowColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color iconRedColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconRedColor:
      appConfig.appConfig.colors.lightMode.icons.iconRedColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color iconOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconOrangeColor:
      appConfig.appConfig.colors.lightMode.icons.iconOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color iconBoldOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconBoldOrangeColor:
      appConfig.appConfig.colors.lightMode.icons.iconBoldOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color iconBlueColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconBlueColor:
      appConfig.appConfig.colors.lightMode.icons.iconBlueColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color iconCyanColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.icons.iconCyanColor:
      appConfig.appConfig.colors.lightMode.icons.iconCyanColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
//#endregion

  //#region loading colors
  Color loadingBlackColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingBlackColor:
      appConfig.appConfig.colors.lightMode.loading.loadingBlackColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color loadingWhiteColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingWhiteColor:
      appConfig.appConfig.colors.lightMode.loading.loadingWhiteColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color loadingGreyColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingGreyColor:
      appConfig.appConfig.colors.lightMode.loading.loadingGreyColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color loadingGreenColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingGreenColor:
      appConfig.appConfig.colors.lightMode.loading.loadingGreenColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color loadingOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingOrangeColor:
      appConfig.appConfig.colors.lightMode.loading.loadingOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color loadingBoldOrangeColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingBoldOrangeColor:
      appConfig.appConfig.colors.lightMode.loading.loadingBoldOrangeColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color loadingBlueColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingBlueColor:
      appConfig.appConfig.colors.lightMode.loading.loadingBlueColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color loadingCyanColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.loading.loadingCyanColor:
      appConfig.appConfig.colors.lightMode.loading.loadingCyanColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

//#endregion

  //#region social colors
  Color socialEmailColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.social.socialEmailColor:
      appConfig.appConfig.colors.lightMode.social.socialEmailColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color socialFacebookColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.social.socialFacebookColor:
      appConfig.appConfig.colors.lightMode.social.socialFacebookColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color socialLinkedInColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.social.socialLinkedInColor:
      appConfig.appConfig.colors.lightMode.social.socialLinkedInColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color socialTwitterColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.social.socialTwitterColor:
      appConfig.appConfig.colors.lightMode.social.socialTwitterColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color socialInstagramColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.social.socialInstagramColor:
      appConfig.appConfig.colors.lightMode.social.socialInstagramColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }
  Color socialWhatsappColor(double opacity) {
    try {
      return Color(int.parse((UserDataFromStorage.themeIsDarkMode
          ?appConfig.appConfig.colors.darkMode.social.socialWhatsappColor:
      appConfig.appConfig.colors.lightMode.social.socialWhatsappColor).replaceAll("#", "0xFF"))).withOpacity(opacity);
    } catch (e) {
      return const Color(0xFFCCCCCC).withOpacity(opacity);
    }
  }

//#endregion



}



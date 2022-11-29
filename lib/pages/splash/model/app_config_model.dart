import 'dart:convert';

AppConfigModel appConfigModelFromJson(String str) => AppConfigModel.fromJson(json.decode(str));

String appConfigModelToJson(AppConfigModel data) => json.encode(data.toJson());

class AppConfigModel {
  AppConfigModel({
   required this.colors,
   required this.fontSize,
  });

  Colors colors;
  List<FontSize> fontSize;

  factory AppConfigModel.fromJson(Map<String, dynamic> json) => AppConfigModel(
    colors: Colors.fromJson(json["colors"]),
    fontSize: List<FontSize>.from(json["fontSize"].map((x) => FontSize.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "colors": colors.toJson(),
    "fontSize": List<dynamic>.from(fontSize.map((x) => x.toJson())),
  };
}

class Colors {
  Colors({
   required this.darkMode,
   required this.lightMode,
  });

  Mode darkMode;
  Mode lightMode;

  factory Colors.fromJson(Map<String, dynamic> json) => Colors(
    darkMode: Mode.fromJson(json["dark_mode"]),
    lightMode: Mode.fromJson(json["light_mode"]),
  );

  Map<String, dynamic> toJson() => {
    "dark_mode": darkMode.toJson(),
    "light_mode": lightMode.toJson(),
  };
}

class Mode {
  Mode({
   required this.appBar,
   required this.primaryAndScaffold,
   required this.divider,
   required this.fonts,
   required this.cardBackground,
   required this.buttons,
   required this.icons,
   required this.loading,
   required this.mainColors,
   required this.progressColors,
   required this.social,
  });

  AppBar appBar;
  PrimaryAndScaffold primaryAndScaffold;
  Divider divider;
  Fonts fonts;
  CardBackground cardBackground;
  Buttons buttons;
  Icons icons;
  Loading loading;
  MainColors mainColors;
  ProgressColors progressColors;
  Social social;

  factory Mode.fromJson(Map<String, dynamic> json) => Mode(
    appBar: AppBar.fromJson(json["app_bar"]),
    primaryAndScaffold: PrimaryAndScaffold.fromJson(json["primary_and_scaffold"]),
    divider: Divider.fromJson(json["divider"]),
    fonts: Fonts.fromJson(json["fonts"]),
    cardBackground: CardBackground.fromJson(json["card_background"]),
    buttons: Buttons.fromJson(json["buttons"]),
    icons: Icons.fromJson(json["icons"]),
    loading: Loading.fromJson(json["loading"]),
    social: Social.fromJson(json["social_colors"]),
    mainColors: MainColors.fromJson(json["main_colors"]),
    progressColors: ProgressColors.fromJson(json["progress_colors"]),
  );

  Map<String, dynamic> toJson() => {
    "app_bar": appBar.toJson(),
    "primary_and_scaffold": primaryAndScaffold.toJson(),
    "divider": divider.toJson(),
    "fonts": fonts.toJson(),
    "card_background": cardBackground.toJson(),
    "buttons": buttons.toJson(),
    "icons": icons.toJson(),
    "loading": loading.toJson(),
    "main_colors": mainColors.toJson(),
    "progress_colors": progressColors.toJson(),
  };
}

class AppBar {
  AppBar({
   required this.appbarBackground,
  });

  String appbarBackground;

  factory AppBar.fromJson(Map<String, dynamic> json) => AppBar(
    appbarBackground: json["appbarBackground"],
  );

  Map<String, dynamic> toJson() => {
    "appbarBackground": appbarBackground,
  };
}

class Buttons {
  Buttons({
   required this.buttonGreenColor,
   required this.buttonBlackColor,
   required this.buttonWhiteColor,
   required this.buttonGrey1Color,
   required this.buttonGrey2Color,
   required this.buttonGrey3Color,
   required this.buttonOrangeColor,
   required this.buttonBoldOrangeColor,
   required this.buttonBlueColor,
   required this.buttonCyanColor,
  });

  String buttonGreenColor;
  String buttonBlackColor;
  String buttonWhiteColor;
  String buttonGrey1Color;
  String buttonGrey2Color;
  String buttonGrey3Color;
  String buttonOrangeColor;
  String buttonBoldOrangeColor;
  String buttonBlueColor;
  String buttonCyanColor;

  factory Buttons.fromJson(Map<String, dynamic> json) => Buttons(
    buttonGreenColor: json["buttonGreenColor"],
    buttonBlackColor: json["buttonBlackColor"],
    buttonWhiteColor: json["buttonWhiteColor"],
    buttonGrey1Color: json["buttonGrey1Color"],
    buttonGrey2Color: json["buttonGrey2Color"],
    buttonGrey3Color: json["buttonGrey3Color"],
    buttonOrangeColor: json["buttonOrangeColor"],
    buttonBoldOrangeColor: json["buttonBoldOrangeColor"],
    buttonBlueColor: json["buttonBlueColor"],
    buttonCyanColor: json["buttonCyanColor"],
  );

  Map<String, dynamic> toJson() => {
    "buttonGreenColor": buttonGreenColor,
    "buttonBlackColor": buttonBlackColor,
    "buttonWhiteColor": buttonWhiteColor,
    "buttonGrey1Color": buttonGrey1Color,
    "buttonGrey2Color": buttonGrey2Color,
    "buttonGrey3Color": buttonGrey3Color,
    "buttonOrangeColor": buttonOrangeColor,
    "buttonBoldOrangeColor": buttonBoldOrangeColor,
    "buttonBlueColor": buttonBlueColor,
    "buttonCyanColor": buttonCyanColor,
  };
}

class CardBackground {
  CardBackground({
   required this.cardBlackColor,
   required this.cardWhiteColor,
   required this.cardGrey1Color,
   required this.cardGrey2Color,
   required this.cardGrey3Color,
   required this.cardGreenColor,
   required this.cardSamyGrey,
   required this.cardOrangeColor,
   required this.cardBoldOrangeColor,
   required this.cardBlueColor,
   required this.cardCyanColor,
  });

  String cardBlackColor;
  String cardWhiteColor;
  String cardGrey1Color;
  String cardGrey2Color;
  String cardGrey3Color;
  String cardGreenColor;
  String cardSamyGrey;
  String cardOrangeColor;
  String cardBoldOrangeColor;
  String cardBlueColor;
  String cardCyanColor;

  factory CardBackground.fromJson(Map<String, dynamic> json) => CardBackground(
    cardBlackColor: json["cardBlackColor"],
    cardWhiteColor: json["cardWhiteColor"],
    cardGrey1Color: json["cardGrey1Color"],
    cardGrey2Color: json["cardGrey2Color"],
    cardGrey3Color: json["cardGrey3Color"],
    cardGreenColor: json["cardGreenColor"],
    cardSamyGrey: json["cardSamyGrey"],
    cardOrangeColor: json["cardOrangeColor"],
    cardBoldOrangeColor: json["cardBoldOrangeColor"],
    cardBlueColor: json["cardBlueColor"],
    cardCyanColor: json["cardCyanColor"],
  );

  Map<String, dynamic> toJson() => {
    "cardBlackColor": cardBlackColor,
    "cardWhiteColor": cardWhiteColor,
    "cardGrey1Color": cardGrey1Color,
    "cardGrey2Color": cardGrey2Color,
    "cardGrey3Color": cardGrey3Color,
    "cardGreenColor": cardGreenColor,
    "cardSamyGrey": cardSamyGrey,
    "cardOrangeColor": cardOrangeColor,
    "cardBoldOrangeColor": cardBoldOrangeColor,
    "cardBlueColor": cardBlueColor,
    "cardCyanColor": cardCyanColor,
  };
}

class Divider {
  Divider({
   required this.dividerColor,
  });

  String dividerColor;

  factory Divider.fromJson(Map<String, dynamic> json) => Divider(
    dividerColor: json["dividerColor"],
  );

  Map<String, dynamic> toJson() => {
    "dividerColor": dividerColor,
  };
}

class Fonts {
  Fonts({
   required this.fontBlackColor,
   required this.fontWhiteColor,
   required this.fontRedColor,
   required this.fontGrey1Color,
   required this.fontGrey2Color,
   required this.fontGrey3Color,
   required this.fontOrangeColor,
   required this.fontBoldOrangeColor,
   required this.fontBlueColor,
   required this.fontCyanColor,
  });

  String fontBlackColor;
  String fontWhiteColor;
  String fontRedColor;
  String fontGrey1Color;
  String fontGrey2Color;
  String fontGrey3Color;
  String fontOrangeColor;
  String fontBoldOrangeColor;
  String fontBlueColor;
  String fontCyanColor;

  factory Fonts.fromJson(Map<String, dynamic> json) => Fonts(
    fontBlackColor: json["fontBlackColor"],
    fontWhiteColor: json["fontWhiteColor"],
    fontRedColor: json["fontRedColor"],
    fontGrey1Color: json["fontGrey1Color"],
    fontGrey2Color: json["fontGrey2Color"],
    fontGrey3Color: json["fontGrey3Color"],
    fontOrangeColor: json["fontOrangeColor"],
    fontBoldOrangeColor: json["fontBoldOrangeColor"],
    fontBlueColor: json["fontBlueColor"],
    fontCyanColor: json["fontCyanColor"],
  );

  Map<String, dynamic> toJson() => {
    "fontBlackColor": fontBlackColor,
    "fontWhiteColor": fontWhiteColor,
    "fontRedColor": fontRedColor,
    "fontGrey1Color": fontGrey1Color,
    "fontGrey2Color": fontGrey2Color,
    "fontGrey3Color": fontGrey3Color,
    "fontOrangeColor": fontOrangeColor,
    "fontBoldOrangeColor": fontBoldOrangeColor,
    "fontBlueColor": fontBlueColor,
    "fontCyanColor": fontCyanColor,
  };
}

class Icons {
  Icons({
   required this.iconBlackColor,
   required this.iconWhiteColor,
   required this.iconGreyColor,
   required this.iconGrey2Color,
   required this.iconGreenColor,
   required this.iconYellowColor,
   required this.iconRedColor,
   required this.iconOrangeColor,
   required this.iconBoldOrangeColor,
   required this.iconBlueColor,
   required this.iconCyanColor,
   required this.iconGrey3Color,
  });

  String iconBlackColor;
  String iconWhiteColor;
  String iconGreyColor;
  String iconGrey3Color;
  String iconGrey2Color;
  String iconGreenColor;
  String iconYellowColor;
  String iconRedColor;
  String iconOrangeColor;
  String iconBoldOrangeColor;
  String iconBlueColor;
  String iconCyanColor;

  factory Icons.fromJson(Map<String, dynamic> json) => Icons(
    iconBlackColor: json["iconBlackColor"],
    iconWhiteColor: json["iconWhiteColor"],
    iconGreyColor: json["iconGreyColor"],
    iconGrey2Color: json["iconGrey2Color"],
    iconGreenColor: json["iconGreenColor"],
    iconYellowColor: json["iconYellowColor"],
    iconRedColor: json["iconRedColor"],
    iconOrangeColor: json["iconOrangeColor"],
    iconBoldOrangeColor: json["iconBoldOrangeColor"],
    iconBlueColor: json["iconBlueColor"],
    iconCyanColor: json["iconCyanColor"],
    iconGrey3Color: json["iconGrey3Color"],
  );

  Map<String, dynamic> toJson() => {
    "iconGrey3Color": iconGrey3Color,
    "iconBlackColor": iconBlackColor,
    "iconWhiteColor": iconWhiteColor,
    "iconGreyColor": iconGreyColor,
    "iconGrey2Color": iconGrey2Color,
    "iconGreenColor": iconGreenColor,
    "iconYellowColor": iconYellowColor,
    "iconRedColor": iconRedColor,
    "iconOrangeColor": iconOrangeColor,
    "iconBoldOrangeColor": iconBoldOrangeColor,
    "iconBlueColor": iconBlueColor,
    "iconCyanColor": iconCyanColor,
  };
}

class Loading {
  Loading({
   required this.loadingBlackColor,
   required this.loadingWhiteColor,
   required this.loadingGreyColor,
   required this.loadingGreenColor,
   required this.loadingOrangeColor,
   required this.loadingBoldOrangeColor,
   required this.loadingBlueColor,
   required this.loadingCyanColor,
  });

  String loadingBlackColor;
  String loadingWhiteColor;
  String loadingGreyColor;
  String loadingGreenColor;
  String loadingOrangeColor;
  String loadingBoldOrangeColor;
  String loadingBlueColor;
  String loadingCyanColor;

  factory Loading.fromJson(Map<String, dynamic> json) => Loading(
    loadingBlackColor: json["loadingBlackColor"],
    loadingWhiteColor: json["loadingWhiteColor"],
    loadingGreyColor: json["loadingGreyColor"],
    loadingGreenColor: json["loadingGreenColor"],
    loadingOrangeColor: json["loadingOrangeColor"],
    loadingBoldOrangeColor: json["loadingBoldOrangeColor"],
    loadingBlueColor: json["loadingBlueColor"],
    loadingCyanColor: json["loadingCyanColor"],
  );

  Map<String, dynamic> toJson() => {
    "loadingBlackColor": loadingBlackColor,
    "loadingWhiteColor": loadingWhiteColor,
    "loadingGreyColor": loadingGreyColor,
    "loadingGreenColor": loadingGreenColor,
    "loadingOrangeColor": loadingOrangeColor,
    "loadingBoldOrangeColor": loadingBoldOrangeColor,
    "loadingBlueColor": loadingBlueColor,
    "loadingCyanColor": loadingCyanColor,
  };
}


class Social {
  Social({
   required this.socialEmailColor,
   required this.socialFacebookColor,
   required this.socialLinkedInColor,
   required this.socialTwitterColor,
   required this.socialInstagramColor,
   required this.socialWhatsappColor,
  });

  String socialEmailColor;
  String socialFacebookColor;
  String socialLinkedInColor;
  String socialTwitterColor;
  String socialInstagramColor;
  String socialWhatsappColor;

  factory Social.fromJson(Map<String, dynamic> json) => Social(
    socialEmailColor: json["socialEmailColor"],
    socialFacebookColor: json["socialFacebookColor"],
    socialLinkedInColor: json["socialLinkedInColor"],
    socialTwitterColor: json["socialTwitterColor"],
    socialInstagramColor: json["socialInstagramColor"],
    socialWhatsappColor: json["socialWhatsappColor"],
  );

  Map<String, dynamic> toJson() => {
    "socialEmailColor": socialEmailColor,
    "socialFacebookColor": socialFacebookColor,
    "socialLinkedInColor": socialLinkedInColor,
    "socialTwitterColor": socialTwitterColor,
    "socialInstagramColor": socialInstagramColor,
    "socialWhatsappColor": socialWhatsappColor,
  };
}

class MainColors {
  MainColors({
   required this.mainOrangeColor,
   required this.mainBoldOrangeColor,
   required this.mainBlueColor,
   required this.mainCyanColor,
  });

  String mainOrangeColor;
  String mainBoldOrangeColor;
  String mainBlueColor;
  String mainCyanColor;

  factory MainColors.fromJson(Map<String, dynamic> json) => MainColors(
    mainOrangeColor: json["mainOrangeColor"],
    mainBoldOrangeColor: json["mainBoldOrangeColor"],
    mainBlueColor: json["mainBlueColor"],
    mainCyanColor: json["mainCyanColor"],
  );

  Map<String, dynamic> toJson() => {
    "mainOrangeColor": mainOrangeColor,
    "mainBoldOrangeColor": mainBoldOrangeColor,
    "mainBlueColor": mainBlueColor,
    "mainCyanColor": mainCyanColor,
  };
}

class PrimaryAndScaffold {
  PrimaryAndScaffold({
   required this.primaryColor,
   required this.scaffoldBackgroundColor,
  });

  String primaryColor;
  String scaffoldBackgroundColor;

  factory PrimaryAndScaffold.fromJson(Map<String, dynamic> json) => PrimaryAndScaffold(
    primaryColor: json["primaryColor"],
    scaffoldBackgroundColor: json["scaffoldBackgroundColor"],
  );

  Map<String, dynamic> toJson() => {
    "primaryColor": primaryColor,
    "scaffoldBackgroundColor": scaffoldBackgroundColor,
  };
}

class ProgressColors {
  ProgressColors({
   required this.progressLabnyColor,
   required this.progressYellowColor,
   required this.progressBoldGreenColor,
   required this.progressBoldBlueColor,
   required this.progressRedColor,
   required this.progressBanfsgColor,
  });

  String progressLabnyColor;
  String progressYellowColor;
  String progressBoldGreenColor;
  String progressBoldBlueColor;
  String progressRedColor;
  String progressBanfsgColor;

  factory ProgressColors.fromJson(Map<String, dynamic> json) => ProgressColors(
    progressLabnyColor: json["progressLABNYColor"],
    progressYellowColor: json["progressYellowColor"],
    progressBoldGreenColor: json["progressBoldGreenColor"],
    progressBoldBlueColor: json["progressBoldBlueColor"],
    progressRedColor: json["progressRedColor"],
    progressBanfsgColor: json["progressBANFSGColor"],
  );

  Map<String, dynamic> toJson() => {
    "progressLABNYColor": progressLabnyColor,
    "progressYellowColor": progressYellowColor,
    "progressBoldGreenColor": progressBoldGreenColor,
    "progressBoldBlueColor": progressBoldBlueColor,
    "progressRedColor": progressRedColor,
    "progressBANFSGColor": progressBanfsgColor,
  };
}

class FontSize {
  FontSize({
   required this.fontSizeName,
   required this.fontSizeId,
  });

  String fontSizeName;
  int fontSizeId;

  factory FontSize.fromJson(Map<String, dynamic> json) => FontSize(
    fontSizeName: json["font_size_name"],
    fontSizeId: json["font_size_id"],
  );

  Map<String, dynamic> toJson() => {
    "font_size_name": fontSizeName,
    "font_size_id": fontSizeId,
  };
}

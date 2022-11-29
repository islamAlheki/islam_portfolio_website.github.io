import 'package:shared_preferences/shared_preferences.dart';


class UserDataFromStorage {
  static late bool userIsGuest;
  static late bool themeIsDarkMode;
  static late String userPhoneTypeFromStorage;
  static late String languageCodeFromStorage='ar';
  static late String languageNameFromStorage;
  static late String userTokenFromStorage;
  static late String phoneNumberFromStorage;
  static late String rememberPhoneNumberFromStorage;
  static late String usernameFromStorage;
  static late String userEmileFromStorage;
  static late String userImageFromStorage;
  static late String userCurrencyCodeFromStorage;
  static late bool firstTime;
  static late bool rememberMeEmailFromStorage;
  static late bool rememberMePhoneFromStorage;
  static late bool allowNotifications;
  static late String loginByEmailOrPhoneFromStorage;
  static late int appSettingFontSize; // ( 1=small || 2=medium || 3=large)
  static late String nationalIDImageFromStorage;
  static late String userCountryNameFromStorage;
  static late int userCountryIdFromStorage;
  static late String userCountryCodeFromStorage;
  static late int userCityIdFromStorage;
  static late String userCityNameFromStorage;
  static late int userIdFromStorage=0;
  static late int allMessagesCountFromStorage=0;

  static setAllMessagesCount(int count) {
    allMessagesCountFromStorage = count;
    _setData();
  }

  static setUserId(int value) {
    userIdFromStorage = value;
    _setData();
  }

  static setRememberPhoneNumber(String phone) {
    rememberPhoneNumberFromStorage = phone;
    _setData();
  }

  static setUserCountryId(int value) {
    userCountryIdFromStorage = value;
    _setData();
  }
  static setUserCountryName(String value) {
    userCountryNameFromStorage = value;
    _setData();
  }
  static setUserCountryCode(String value) {
    userCountryCodeFromStorage = value;
    _setData();
  }

  static setProfileCityId(int value) {
    userCityIdFromStorage = value;
    _setData();
  }

  static setUserCityName(String value) {
    userCityNameFromStorage = value;
    _setData();
  }

  static setUserIsGuest(bool block) {
    userIsGuest = block;
    _setData();
  }
  static setNationalIDImage(String img) {
    nationalIDImageFromStorage = img;
    _setData();
  }

  static setAllowNotifications(bool allow) {
    allowNotifications = allow;
    _setData();
  }

  static setAppSettingFontSize(int size) {
    appSettingFontSize = size;
    _setData();
  }

 static setThemeIsDarkMode(bool darkMode) {
   themeIsDarkMode = darkMode;
    _setData();
  }

  static setRememberMeEmail(bool remember) {
    rememberMeEmailFromStorage = remember;
    _setData();
  }
  static setRememberMePhone(bool remember) {
    rememberMePhoneFromStorage = remember;
    _setData();
  }

  static setLoginByEmailOrPhone(String loginBy) {
    loginByEmailOrPhoneFromStorage = loginBy;
    _setData();
  }



  static  setUserImage (String value)  {
    userImageFromStorage=value;
    _setData();
  }


  static  setPhoneType(String value)  {
    userPhoneTypeFromStorage=value;
    _setData();
  }
  static  setAppLanguageCode(String value)  {
    languageCodeFromStorage=value;
    _setData();
  }

  static  setAppLanguageName(String value)  {
    languageNameFromStorage=value;
    _setData();
  }
  static  setFullName(String value){
    usernameFromStorage=value;
    _setData();
  }

  static  setToken(String value)  {
    userTokenFromStorage=value;
    _setData();
  }
  static  setEmail(String value)  {
    userEmileFromStorage=value;
    _setData();
  }
  static  setPhoneNumber(String value)  {
    phoneNumberFromStorage=value;
    _setData();
  }

  static  setUserCurrencyCode(String value)  {
    userCurrencyCodeFromStorage=value;
    _setData();
  }

  static  setFirstTimeApp(bool value) {
    firstTime=value;
    _setData();
  }


  /// this function to remove all storage
  static removeAllDataFromStorage() async{
    final prefs= await SharedPreferences.getInstance();
    await prefs.clear();
  }
  /// this function to remove any data from local storage by key
  static removeDataFromStorage(String key) async{
    final prefs= await SharedPreferences.getInstance();
    await prefs.remove(key);
  }


  //#region private
  static void _setData()async {




    final prefs= await SharedPreferences.getInstance();
    prefs.setBool("userIsGuest",userIsGuest);
    prefs.setString("languageCodeFromStorage",languageCodeFromStorage);
    prefs.setString("languageNameFromStorage",languageNameFromStorage);
    prefs.setString("loginByEmailOrPhoneFromStorage",loginByEmailOrPhoneFromStorage);
    prefs.setString("userCurrencyCodeFromStorage",userCurrencyCodeFromStorage);
    prefs.setString("userTokenFromStorage",userTokenFromStorage);
    prefs.setString("phoneNumberFromStorage",phoneNumberFromStorage);
    prefs.setString("usernameFromStorage",usernameFromStorage);
    prefs.setString("userImageFromStorage",userImageFromStorage);
    prefs.setString("userEmileFromStorage",userEmileFromStorage);
    prefs.setString("nationalIDImageFromStorage",nationalIDImageFromStorage);
    prefs.setString("profileCountryFromStorage",userCountryNameFromStorage);
    prefs.setString("userCityNameFromStorage",userCityNameFromStorage);
    prefs.setBool("firstTime",firstTime);
    prefs.setBool("themeIsDarkMode",themeIsDarkMode);
    prefs.setBool("rememberMeEmailFromStorage",rememberMeEmailFromStorage);
    prefs.setBool("rememberMePhoneFromStorage",rememberMePhoneFromStorage);
    prefs.setBool("allowNotifications",allowNotifications);
    prefs.setInt("appSettingFontSize",appSettingFontSize);
    prefs.setInt("profileCountryIdFromStorage",userCountryIdFromStorage);
    prefs.setInt("profileCityIdFromStorage",userCityIdFromStorage);
    prefs.setInt("userIdFromStorage",userIdFromStorage);
    prefs.setString("userCountryCodeFromStorage",userCountryCodeFromStorage);
    prefs.setString("rememberPhoneNumberFromStorage",rememberPhoneNumberFromStorage);
    prefs.setInt("allMessagesCountFromStorage",allMessagesCountFromStorage);
  }


  static   getData() async {


    final prefs = await SharedPreferences.getInstance();
    userIsGuest = prefs.getBool("userIsGuest")?? true;
    userPhoneTypeFromStorage = prefs.getString("userPhoneTypeFromStorage")??'';
    loginByEmailOrPhoneFromStorage = prefs.getString("loginByEmailOrPhoneFromStorage")??'';
    userCurrencyCodeFromStorage = prefs.getString("userCurrencyCodeFromStorage")??'SR';
    languageCodeFromStorage = prefs.getString("languageCodeFromStorage")??'ar';
    languageNameFromStorage = prefs.getString("languageNameFromStorage")??'langArabic';
    userTokenFromStorage = prefs.getString("userTokenFromStorage")??'null';
    phoneNumberFromStorage = prefs.getString("phoneNumberFromStorage")??'';
    userImageFromStorage = prefs.getString("userImageFromStorage")??'';
    usernameFromStorage = prefs.getString("usernameFromStorage")??'';
    userEmileFromStorage = prefs.getString("userEmileFromStorage")??'';
    nationalIDImageFromStorage = prefs.getString("nationalIDImageFromStorage")??'';
    userCountryNameFromStorage = prefs.getString("profileCountryFromStorage")??'';
    userCountryCodeFromStorage = prefs.getString("userCountryCodeFromStorage")??'';
    userCityNameFromStorage = prefs.getString("userCityNameFromStorage")??'';
    firstTime = prefs.getBool("firstTime")?? false;
    themeIsDarkMode = prefs.getBool("themeIsDarkMode")?? false;
    rememberMeEmailFromStorage = prefs.getBool("rememberMeEmailFromStorage")?? false;
    rememberMePhoneFromStorage = prefs.getBool("rememberMePhoneFromStorage")?? false;
    allowNotifications = prefs.getBool("allowNotifications")?? true;
    appSettingFontSize = prefs.getInt("appSettingFontSize")?? 2;
    userCountryIdFromStorage = prefs.getInt("profileCountryIdFromStorage")?? -1;
    userCityIdFromStorage = prefs.getInt("profileCityIdFromStorage")?? -1;
    userIdFromStorage = prefs.getInt("userIdFromStorage")?? -1;
    rememberPhoneNumberFromStorage = prefs.getString("rememberPhoneNumberFromStorage")?? '';
    allMessagesCountFromStorage = prefs.getInt("allMessagesCountFromStorage")?? 0;


  }

//#endregion

}

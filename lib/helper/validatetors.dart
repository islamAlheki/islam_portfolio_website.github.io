import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';


String replaceEnglishNumber(String input) {
  const english = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'];
  const arabic = ['٠', '١', '٢', '٣', '٤', '٥', '٦', '٧', '٨', '٩'];

  for (int i = 0; i < english.length; i++) {
    input = input.replaceAll(arabic[i], english[i]);
  }
  // if (kDebugMode) {
  //   print(input);
  // }
  return input;
}


bool checkTextEnglish(String text) {
  if( RegExp("[a-z]").hasMatch(text.toString())){
    return true;
  }
  return false;
}


bool validateEmailRegExp({ required String value, required BuildContext context}) {
  // This is just a regular expression for email addresses
  var p = "[a-zA-Z0-9+._%-+]{1,256}" """
\\@""" """
[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}""" "(" "\\." "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" ")+";
  RegExp regExp = RegExp(p);
  if (regExp.hasMatch(value)) {
    
    if (kDebugMode) {
      print('emile is valid');
    }
    // So, the email is valid
    return true;
  }
  else{
    
    if (kDebugMode) {
      print('Email is not valid');
    }
    return false;
  }

}

bool isNumericUsingRegularExpression(String string) {
  final numericRegex =
  RegExp(r'^-?(([0-9]*)|(([0-9]*)\.([0-9]*)))$');
  return numericRegex.hasMatch(string);
}

String? validatePhoneNumber({ required String value, required BuildContext context}) {
  if(value.isEmpty){
    return 'phoneEmpty';
  }
  else if(value.length<6){
    return 'invalidPhoneNumber';
  }
  return null;
}

String? validateUserName({ required String value, required BuildContext context}) {
  if(value.toString().trim().isEmpty){
    return 'userNameEmpty';
  }
  return null;
}

String? validateEmail({ required String value, required BuildContext context}) {
  if(value.toString().isEmpty){
    return 'emailEmpty';
  }
  else if(!validateEmailRegExp(context: context,value:value.toString(),)){
    return 'emailNotValid';
  }
  return null;
}

bool checkValidateEmailBool({ required String value, required BuildContext context}) {
  // This is just a regular expression for email addresses
  var p = "[a-zA-Z0-9+._%-+]{1,256}" """
\\@""" """
[a-zA-Z0-9][a-zA-Z0-9\\-]{0,64}""" "(" "\\." "[a-zA-Z0-9][a-zA-Z0-9\\-]{0,25}" ")+";
  RegExp regExp = RegExp(p);
  if (regExp.hasMatch(value)) {
    
    if (kDebugMode) {
      print('emile is valid');
    }
    // So, the email is valid
    return true;
  }
  else{
    
    if (kDebugMode) {
      print('Email is not valid');
    }
    return false;
  }

}

// String? adTimeDifference({ required String adTime, required BuildContext context}) {
//
//   int dateMints = DateTime.now().difference(DateTime.parse(adTime).toLocal()).inMinutes;
//   int dateHours = DateTime.now().difference(DateTime.parse(adTime).toLocal()).inHours;
//   int dateDays = DateTime.now().difference(DateTime.parse(adTime).toLocal()).inDays;
//   int dateMonth = DateTime.now().difference(DateTime.parse(adTime).toLocal()).inDays% 365 ~/ 30;
//   int dateYear = DateTime.now().difference(DateTime.parse(adTime).toLocal()).inDays ~/ 365;
//
//   /// NOW
//   if(dateMints == 0){
//     return 'now'
//   }
//   /// 4 days ago
//   if(dateDays != 0&&dateDays<=31){
//     return "${(dateDays!=2)?dateDays:''} ${AppLocalizations.of(context)!.translate((dateDays==1)?'day':(dateDays==2)?'twoDays':(dateDays>2&&dateDays<=10)?'days':'day').toString()}";
//   }
//   /// 4 years ago
//   if(dateYear != 0){
//     return "${(dateYear!=2)?dateYear:''} ${AppLocalizations.of(context)!.translate((dateYear==1)?'year':(dateYear==2)?'twoYears':(dateYear>2&&dateYear<=10)?'years':'year').toString()}";
//   }
//   /// 4 month ago
//   if(dateMonth != 0 && dateMonth<=12){
//     return "${(dateMonth!=2)?dateMonth:''} ${AppLocalizations.of(context)!.translate((dateMonth==1)?'month':(dateMonth==2)?'twoMonths':(dateMonth>2&&dateMonth<=10)?'months':'month').toString()}";
//   }
//   /// 4 hours ago
//   if(dateHours != 0){
//     return "${(dateHours!=2)?dateHours:''} ${AppLocalizations.of(context)!.translate((dateHours==1)?'hour':(dateHours==2)?'twoHours':(dateHours>2&&dateHours<=10)?'hours':'hours').toString()}";
//   }
//   /// 4 minutes ago
//   else{
//     return "${(dateMints!=2)?dateMints:''} ${AppLocalizations.of(context)!.translate((dateMints==1)?'minute':(dateMints==2)?'twoMinutes':(dateMints>2&&dateMints<=10)?'minutes':'minute').toString()}";
//   }
//
// }


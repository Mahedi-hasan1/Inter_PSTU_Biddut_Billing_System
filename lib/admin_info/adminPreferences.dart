
// import 'dart:convert';

// import 'package:e_bill/admin_info/adminModel.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class CurrrentAdmin{
//   //String adminKey = "currentAdmin";
  

//  static Future<void> setCurrentAdmin(Admin adminInfo)async{
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     String adminJsonData = jsonEncode(adminInfo.toJson());
//     preferences.setString("currentAdmin", adminJsonData);
//     var ad = await getCurrentAdmin();
//     print(ad);
//   }
//   Future<
//   static Future<String> getCurrentAdmin()async{
//     SharedPreferences preferences = await SharedPreferences.getInstance();
//     var data = preferences.getString("currentAdmin");
    
//     if(data!=null)return data;
//     return "no data";
//   }

//   Future<bool> checkLoggedIn() async{
//     SharedPreferences pref =  await SharedPreferences.getInstance();
//     var isloggedIn = pref.getBool("currentAdmin");
//     if(isloggedIn!=null){
//       return isloggedIn;
//     }
//     else {
//       return false;
//     }
//   }
//   Future<void> setLoggedIn({
//     required bool setter
//     }) async{
//     SharedPreferences pref =  await SharedPreferences.getInstance();
//     await pref.setBool("currentAdmin", setter);
//   }

// }

import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static late SharedPreferences sb;

  static Future<void> init() async {
    sb = await SharedPreferences.getInstance();
  }

  static setString(String key, String value) {
    sb.setString(key, value);
  }

  static String? getString(String key) {
    return sb.getString(key);
  }

  static String getToken(String key) {
    return sb.getString(key) ?? "";
  }
}
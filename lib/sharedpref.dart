import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceHelper {
  static String userIdkey = "USERKEY";
  static String userEmailkey = "USEREMAILKEY";
  static String userNamekey = "USERNAMEKEY";
  static String displayNamekey = " USERDISPLAYNAMEKEY";
  static String userProfilePickey = "USERPROFILEPICKEY";

  //save date
  Future<bool> saveUserName(String getUserName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userNamekey, getUserName);
  }

  Future<bool> saveUserEmail(String getUseremail) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userEmailkey, getUseremail);
  }

  Future<bool> saveUserId(String getUserId) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userIdkey, getUserId);
  }

  Future<bool> saveDisplayName(String getDisplayName) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(displayNamekey, getDisplayName);
  }

  Future<bool> saveUserProfileUrl(String getUserProfile) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.setString(userProfilePickey, getUserProfile);
  }

// get date
  Future<String?> getUserName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userNamekey);
  }

  Future<String?> getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userEmailkey);
  }
  Future<String?> getUserId() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userIdkey);
  }
  Future<String?> getdisplayName() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(displayNamekey);
  }
  Future<String?> getUserProfileUrl() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getString(userProfilePickey);
  }
}


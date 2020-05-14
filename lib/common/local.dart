import 'package:msg/models/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocalStorage {

  static saveUser (User user) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString('userId', user.userId);
    prefs.setString('loginSignId', user.loginSignId);
    prefs.setString('userName', user.userName);
    prefs.setString('className', user.className);
    prefs.setString('gradeName', user.gradeName);
    prefs.setString('userPhoto', user.userPhoto);
    prefs.setString('accountId', user.accountId);
    prefs.setString('userCode', user.userCode);
    prefs.setString('sex', user.sex);
  }

  static Future<User> getUser() async {
    User user;
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if (prefs.containsKey('userId')) {
      user = new User();
      user.userId = prefs.getString('userId');
    }
    if (prefs.containsKey('loginSignId')) {
      user.loginSignId = prefs.getString('loginSignId');
    }
    if (prefs.containsKey('userName')) {
      user.userName = prefs.getString('userName');
    }
    if (prefs.containsKey('className')) {
      user.className = prefs.getString('className');
    }
    if (prefs.containsKey('gradeName')) {
      user.gradeName = prefs.getString('gradeName');
    }
    if (prefs.containsKey('userPhoto')) {
      user.userPhoto = prefs.getString('userPhoto');
    }
    if (prefs.containsKey('accountId')) {
      user.accountId = prefs.getString('accountId');
    }
    if (prefs.containsKey('userCode')) {
      user.userCode = prefs.getString('userCode');
    }
    if (prefs.containsKey('sex')) {
      user.sex = prefs.getString('sex');
    }
    return user;
  }

  static Future removeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('userId');
    prefs.remove('loginSignId');
    prefs.remove('userName');
    prefs.remove('className');
    prefs.remove('gradeName');
    prefs.remove('userPhoto');
    prefs.remove('accountId');
    prefs.remove('userCode');
    prefs.remove('sex');
  }
}

import '../index.dart';
class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset("images/splash.png", fit: BoxFit.cover),
    );
  }

  @override
  void initState() {
    super.initState();
    countDown();
  }

  // 倒计时
  void countDown() {
    var _duration = new Duration(seconds: 2);
    new Future.delayed(_duration, go2HomePage);
  }

  void go2HomePage() {
    Future<User> user = LocalStorage.getUser();
    user.then((User user) {
      if (user == null) {
        Navigator.of(context).pushReplacementNamed('loginPage');
      } else {
        Navigator.of(context).pushReplacementNamed('homePage');
      }
    }).catchError((onError){
      print(onError.toString());
    });
  }
}
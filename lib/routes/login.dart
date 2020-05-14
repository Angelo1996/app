import '../index.dart';
import 'package:dio/dio.dart';

class LoginRoute extends StatefulWidget {
  @override
  _LoginRouteState createState() => _LoginRouteState();
}

class _LoginRouteState extends State<LoginRoute> {
  String _account = '';
  String _password = '';
  Dio dio =  Dio();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            padding: EdgeInsets.only(left: 20, right: 20),
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Text("登录",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35.0,
                ),
              ),
              SizedBox(
                height: 40,
              ),
              SizedBox(
                child: ITextField(
                  maxLength: 20,
                  keyboardType: ITextInputType.multiline,
                  hintText: '请输入手机号/账号',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0),
                  textStyle: TextStyle(color: Colors.black, fontSize: 24.0),
                  fieldCallBack: (content) {
                    _account = content;
                    print('账号'+_account);
                  },
                ),
              ),
              SizedBox(
                child: ITextField(
                  maxLength: 20,
                  keyboardType: ITextInputType.password,
                  hintText: '密码',
                  hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0),
                  textStyle: TextStyle(color: Colors.black, fontSize: 24.0),
                  fieldCallBack: (content) {
                    _password = content;
                    print('密码'+_password);
                  },
                ),
              ),
              SizedBox(height: 55),
              ButtonTheme(
                height: 50,
                child: RaisedButton(
                  color: Colors.blue,
                  highlightColor: Color(0x1896ea),
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text(
                    "登录",
                    style: TextStyle(fontSize: 16.0),),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                    doUserLogin();
                  },
                ),
              ),
              SizedBox(height: 20),
              Align(
                  alignment: Alignment.topRight,
                  // widthFactor: 2.0,
                  // heightFactor: 2.0,
                  child: FlatButton(
                    padding: EdgeInsets.only(right: 0),
                    child: Text(
                      '忘记密码',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey
                      ),
                    ),
                    onPressed: (){
//                      Navigator.push(
//                        context,
//                        MaterialPageRoute(builder: (context) => ForgetRoute()),
//                      );
                    },
                  )
              ),
            ],
          ),
        ),
      ),
    );
  }

  // 用户点击登录
  doUserLogin () {
    if (!(_account.length > 0)) {
      Fluttertoast.showToast(
          msg: "请输入账号",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Color.fromARGB(75, 0, 0, 0),
          textColor: Colors.white
      );
      return;
    }
    if (!(_password.length > 0)) {
      Fluttertoast.showToast(
          msg: "请输入密码",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          backgroundColor: Color.fromARGB(75, 0, 0, 0),
          textColor: Colors.white
      );
      return;
    }
    String url = Api.loginUrl;
    HttpUtil.post(
        url,
        data: {
          'userCode':_account,
          'passWord':_password,
          'roleType':roleType
        },
        success: (data){
          Map<String, dynamic> json = data[0];
          User user = User.fromJson(json);
          print('json'+json.toString());
          LocalStorage.saveUser(user);
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => HomeRoute()),
          );
        },error: (errorMsg){
      print(errorMsg);
    }
    );
  }
}
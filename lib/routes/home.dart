import '../index.dart';
class HomeRoute extends StatefulWidget {
  @override
  _HomeRouteState createState() => _HomeRouteState();
}

class _HomeRouteState extends State<HomeRoute> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          child: ListView(
            padding: EdgeInsets.only(left: 10, right: 10, top: 20),
            children: <Widget>[
              ButtonTheme(
                height: 50,
                child: RaisedButton(
                  color: Colors.blue,
                  highlightColor: Color(0x1896ea),
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text(
                    "Educate me - Policy",
                    style: TextStyle(fontSize: 16.0),),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                    //点击事件
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PolicyRoute()),
                    );
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                height: 50,
                child: RaisedButton(
                  color: Colors.blue,
                  highlightColor: Color(0x1896ea),
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text(
                    "Educate me - Policy",
                    style: TextStyle(fontSize: 16.0),),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                height: 50,
                child: RaisedButton(
                  color: Colors.blue,
                  highlightColor: Color(0x1896ea),
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text(
                    "Educate me - Policy",
                    style: TextStyle(fontSize: 16.0),),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                height: 50,
                padding: EdgeInsets.only(left: 10, right: 10, top: 20),

                child: RaisedButton(
                  color: Colors.blue,
                  highlightColor: Color(0x1896ea),
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text(
                    "Educate me - Policy",
                    style: TextStyle(fontSize: 16.0),),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                  },
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ButtonTheme(
                height: 50,
                child: RaisedButton(
                  color: Colors.blue,
                  highlightColor: Color(0x1896ea),
                  colorBrightness: Brightness.dark,
                  splashColor: Colors.grey,
                  child: Text(
                    "Educate me - Policy",
                    style: TextStyle(fontSize: 16.0),),
                  shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
                  onPressed: () {
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }


}
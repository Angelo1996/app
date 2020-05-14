import '../index.dart';
import 'package:webview_flutter/webview_flutter.dart';
class PolicyRoute extends StatefulWidget {
  @override
  _PolicyRouteState createState() => _PolicyRouteState();
}

class _PolicyRouteState extends State<PolicyRoute> {
  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: "http://www.mysafetyguru.co.nz/safetyguru/business_user/userLogin",
      //JS执行模式 是否允许JS执行
      javascriptMode: JavascriptMode.unrestricted,
    );

  }
}
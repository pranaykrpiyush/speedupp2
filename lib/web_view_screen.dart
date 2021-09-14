import 'package:flutter/material.dart';

import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

class WebViewScreen extends StatefulWidget {
  const WebViewScreen({Key? key}) : super(key: key);

  @override
  _WebViewScreenState createState() => _WebViewScreenState();
}

class _WebViewScreenState extends State<WebViewScreen> {
  // final webCtrl = WebViewController;
  final url = 'https://flutter.dev';

  //Uri? currentUrl= webCtrl.
  //currentUrl =
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: Container(
        child: WebviewScaffold(
          userAgent: "random", //Add this to resolve issue
          url: "https://app.speedupsmm.com",
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

import 'home/components/menu.dart';

class WebViewAapp extends StatefulWidget {
  const WebViewAapp({Key? key}) : super(key: key);

  @override
  State<WebViewAapp> createState() => _WebViewAappState();
}

class _WebViewAappState extends State<WebViewAapp> {
  double _progress = 0;
  late InAppWebViewController webView;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Stack(
        children: [
          InAppWebView(
            initialUrlRequest: URLRequest(
              url: Uri.parse(
                'https://www.starwars.com/community',
              ),
            ),
            onWebViewCreated: (InAppWebViewController controller){
              webView = controller;
            },
            onProgressChanged: (InAppWebViewController controller, int progress){
              setState(() {
                _progress = progress / 100;
              });
            },
          ),
          _progress < 1 ? SizedBox(
            height: 3,
            child: LinearProgressIndicator(
              value: _progress,//accentcolor nao existe mais
              backgroundColor: Theme.of(context).primaryColor.withOpacity(0.2),
            ),
          )
              : SizedBox()
        ],
      ),
    );
  }
}

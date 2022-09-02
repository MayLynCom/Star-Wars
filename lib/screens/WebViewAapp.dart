import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'home/components/header.dart';


class WebViewAapp extends StatefulWidget {
  const WebViewAapp({Key? key}) : super(key: key);

  @override
  State<WebViewAapp> createState() => _WebViewAappState();
}

class _WebViewAappState extends State<WebViewAapp> {
  late InAppWebViewController webView;
  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Header(),
            Center(
              child: SizedBox(
                height: 600,
                child: InAppWebView(
                  initialUrlRequest: URLRequest(
                    url: Uri.parse(
                      'https://www.starwars.com/community',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

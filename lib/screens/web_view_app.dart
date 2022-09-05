import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:star_wars/screens/home/home_filmes.dart';



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
          Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              margin: const EdgeInsets.only(top: 30),
              width: 125,
              height: 50,
              decoration: BoxDecoration(
                  border: Border.all(
                      color:Colors.green,
                      width: 3),
                  color: Colors.green[100]),
              child: const Text(
                'Site Oficial',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  height: 1.8,
                ),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeFilmes()));
              },
              icon: const Icon(Icons.account_circle_outlined),
              iconSize: 90,
            ),
          ],
        ),
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

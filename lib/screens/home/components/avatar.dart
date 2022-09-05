import 'package:flutter/material.dart';
import '../../web_view_app.dart';
import '../home_filmes.dart';


class Avatar extends StatefulWidget {
  const Avatar({Key? key}) : super(key: key);

  @override
  State<Avatar> createState() => _AvatarState();
}

class _AvatarState extends State<Avatar> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const WebViewAapp()));
                });
              },
              child: Container(
                margin: const EdgeInsets.only(top: 30),
                width: 125,
                height: 50,
                decoration: BoxDecoration(
                    border: Border.all(
                        color:Colors.black,
                        width: 3),
                ),
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
            ),
            Container(
              color: Colors.green[100],
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeFilmes()));
                },
                icon: const Icon(Icons.account_circle_outlined),
                iconSize: 90,

              ),
            ),
          ],
        ),
      ),
    );
  }
}

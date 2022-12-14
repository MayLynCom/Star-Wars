import 'package:flutter/material.dart';
import 'package:star_wars/screens/home/components/avatar.dart';
import '../../web_view_app.dart';

class Header extends StatefulWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {

  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
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
                    color:  Colors.black,
                    width: 3),
                color: Colors.transparent),
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
        IconButton(
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Avatar()));
          },
          icon: const Icon(Icons.account_circle_outlined),
          iconSize: 90,
        ),
      ],
    );
  }
}
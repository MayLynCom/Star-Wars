import 'package:flutter/material.dart';
import 'package:star_wars/screens/home/components/avatar.dart';
import 'package:star_wars/screens/lists/favoritos.dart';
import '../../WebViewAapp.dart';


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
              Navigator.push(context, MaterialPageRoute(builder: (context) => WebViewAapp()));
              selected = 1;
            });
          },
          child: Container(
            margin: EdgeInsets.only(top: 30),
            width: 125,
            height: 50,
            decoration: BoxDecoration(
                border: Border.all(
                    color: selected == 1
                        ? Colors.green
                        : Colors.black,
                    width: 3),
                color: selected == 1
                    ? Colors.green[100]
                    : Colors.transparent),
            child: Text(
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
            Navigator.push(context, MaterialPageRoute(builder: (context) => Avatar()));
          },
          icon: Icon(Icons.account_circle_outlined),
          iconSize: 90,
        ),
      ],
    );
  }
}
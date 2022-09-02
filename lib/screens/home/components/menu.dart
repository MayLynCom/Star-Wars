import 'package:flutter/material.dart';
import 'package:star_wars/screens/lists/personagem.dart';
import '../../lists/favoritos.dart';
import '../home.dart';

class Menu extends StatefulWidget {
  const Menu({
    Key? key,
  }) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  List<String> menu = ['Filmes', 'Personagens', 'Favoritos'];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: SizedBox(
        height: 80,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: menu.length,
          itemBuilder: (context, index) => buildMenu(index),
        ),
      ),
    );
  }

  Widget buildMenu(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          //Navigator.push(context, MaterialPageRoute(builder: (context) => Personagem()));
          selectedIndex = index;
        });
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 3),
        child: Container(
          margin: EdgeInsets.only(top: 30),
          width: 125,
          decoration: BoxDecoration(
              border: Border.all(
                  color: selectedIndex == index
                      ? Colors.green
                      : Colors.black,
                  width: 3),
              color: selectedIndex == index
                  ? Colors.green[100]
                  : Colors.transparent),
          child: Text(
            menu[index],
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
              height: 1.8,
            ),
          ),
        ),
      ),
    );
  }
}

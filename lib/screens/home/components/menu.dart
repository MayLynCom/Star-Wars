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


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Options(
            options: 'Filmes',
          ),
          Options(
            options: 'Personagens',
          ),
          Options(
            options: 'Favoritos',
          ),
        ],
      ),
    );
  }
}

class Options extends StatelessWidget {
  final String options;

  const Options({
    Key? key,
    required this.options,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 125,
      height: 50,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Text(
        options,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w500,
          height: 1.8,
        ),
      ),
    );
  }
}

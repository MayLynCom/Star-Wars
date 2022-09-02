import 'package:flutter/material.dart';
import '../home/components/header.dart';
import '../home/components/menu.dart';

class Personagem extends StatefulWidget {
  const Personagem({Key? key}) : super(key: key);

  @override
  State<Personagem> createState() => _PersonagemState();
}

class _PersonagemState extends State<Personagem> {

  List<String> personagens = [
    'Luke Skywalker',
    'C-3PO',
    'Darth Vader'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Header(),
            Menu(),
            SizedBox(
              height: 500,
              child: ListView.builder(
                itemCount: personagens.length,
                itemBuilder: (context, index) => buildCardNames(index),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildCardNames(int index) {
    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 350,
      height: 110,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black, width: 3),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Text(
              personagens[index],
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border),
            iconSize: 50,
          )
        ],
      ),
    );
  }
}


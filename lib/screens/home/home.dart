import 'package:flutter/material.dart';
import 'components/header.dart';
import 'components/menu.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> filmes = [
    'A New Hope',
    'The Empire Strikes Back',
    'Return Of The Jedi'
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
                itemCount: filmes.length,
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
              filmes[index],
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

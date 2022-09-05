import 'package:flutter/material.dart';
import 'package:star_wars/screens/home/home_filmes.dart';
import 'package:star_wars/screens/lists/personagens.dart';
import '../../models/lists.dart';
import '../home/components/header.dart';

class Favoritos extends StatefulWidget {
  const Favoritos({
    Key? key,
  }) : super(key: key);

  @override
  State<Favoritos> createState() => _FavoritosState();
}

class _FavoritosState extends State<Favoritos> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            const Header(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const HomeFilmes()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Text(
                      'Filmes',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.8,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Personagens()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: const Text(
                      'Personagens',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        height: 1.8,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 3),
                    color: Colors.green[100],
                  ),
                  child: const Text(
                    'Favoritos',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      height: 1.8,
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              height: 500,
              child: ListView.builder(
                itemCount: favlists.length,
                itemBuilder: (context, index) => buildFavList(index),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget buildFavList(int index) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      width: 350,
      height: 110,
      decoration: BoxDecoration(
        border: Border.all(
          color: favlists[index].color,
          width: 3,
        ),
      ),
      child: Center(
        child: Text(
          favlists[index].title,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}

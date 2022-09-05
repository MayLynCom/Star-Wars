import 'package:flutter/material.dart';
import 'package:star_wars/screens/home/home_filmes.dart';
import 'package:star_wars/screens/lists/favoritos.dart';
import '../../models/lists.dart';
import '../home/components/header.dart';

class Personagens extends StatefulWidget {
  const Personagens({
    Key? key,
  }) : super(key: key);

  @override
  State<Personagens> createState() => _PersonagensState();
}

class _PersonagensState extends State<Personagens> {
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
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 110,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 3),
                    color: Colors.green[100],
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
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Favoritos()));
                  },
                  child: Container(
                    margin: const EdgeInsets.only(top: 30),
                    width: 110,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
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
                  ),
                )
              ],
            ),
            Container(
              padding: const EdgeInsets.only(top: 20),
              height: 500,
              child: FutureBuilder<List>(
                future: personagensAPI(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text('Erro ao carregar Personagens'),
                    );
                  }
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) =>
                          buildPersonagens(index, snapshot),
                    );
                  }
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPersonagens(int index, snapshot) {
    String personagens = snapshot.data![index]['name'];

    return Container(
      margin: const EdgeInsets.only(bottom: 30),
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
              personagens,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                height: 1.5,
              ),
            ),
          ),
          IconButton(
            onPressed: () {
              setState(() {
                if (favlists.any((element) => element.title == personagens)) {
                  favlists.removeWhere((element) => element.title == personagens);
                } else {
                  favlists.add(FavList(title: personagens, color: Colors.lightGreenAccent));
                }
              });
            },
            icon: favlists.any((element) => element.title == personagens)
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border),
            iconSize: 40,
          ),
        ],
      ),
    );
  }
}

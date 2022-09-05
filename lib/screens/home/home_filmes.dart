import 'package:flutter/material.dart';
import 'package:star_wars/screens/lists/favoritos.dart';
import 'package:star_wars/screens/lists/personagens.dart';
import '../../models/lists.dart';
import 'components/header.dart';

class HomeFilmes extends StatefulWidget {
  const HomeFilmes({Key? key}) : super(key: key);

  @override
  State<HomeFilmes> createState() => _HomeFilmesState();
}

class _HomeFilmesState extends State<HomeFilmes> {
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
                Container(
                  margin: const EdgeInsets.only(top: 30),
                  width: 110,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 3),
                      color: Colors.green[100]),
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
                future: filmesAPI(),
                builder: (context, snapshot) {
                  if (snapshot.hasError) {
                    return const Center(
                      child: Text('Erro ao carregar Filmes'),
                    );
                  }
                  if (snapshot.hasData) {
                    return ListView.builder(
                      itemCount: 3,
                      itemBuilder: (context, index) =>
                          buildFilmes(index, snapshot),
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

  Widget buildFilmes(int index, snapshot) {
    String filmes = snapshot.data![index]['title'];
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
              filmes,
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
                if (favlists.any((element) => element.title == filmes)) {
                  favlists.removeWhere((element) => element.title == filmes);
                } else {
                  favlists.add(FavList(title: filmes, color: Colors.red));
                }
              });
            },
            icon: favlists.any((element) => element.title == filmes)
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border),
            iconSize: 40,
          ),
        ],
      ),
    );
  }
}

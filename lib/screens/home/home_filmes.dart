import 'package:flutter/material.dart';
import 'package:star_wars/screens/lists/favoritos.dart';
import 'package:star_wars/screens/lists/personagens.dart';
import '../../models/lists.dart';
import 'components/header.dart';


class HomeFilmes extends StatefulWidget {
  HomeFilmes({Key? key}) : super(key: key);

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
            Header(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 125,
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.green, width: 3),
                      color: Colors.green[100]),
                  child: Text(
                    'Filmes',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      height: 1.8,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Personagens()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 125,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: Text(
                      'Personagens',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 1.8,
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Favoritos()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 125,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                    ),
                    child: Text(
                      'Favoritos',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        height: 1.8,
                      ),
                    ),
                  ),
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              height: 500,
              child: ListView.builder(
                itemCount: filmes.length,
                itemBuilder: (context, index) => buildFilmes(index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildFilmes(int index) {
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
                  onPressed: () {
                    setState(() {
                      if(favlist.contains(filmes[index])){
                        favlist.remove(filmes[index]);
                        print(favlist);
                      }else{
                        favlist.add(filmes[index]);
                        print(favlist);
                      }
                    });
                  },
                  icon: favlist.contains(filmes[index])
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                  iconSize: 50,
                )
              ],
            ),
          );
  }
}

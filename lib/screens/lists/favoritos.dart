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
            Header(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeFilmes()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 30),
                    width: 125,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black, width: 3),
                    ),
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
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 125,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 3),
                    color: Colors.green[100],
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
                )
              ],
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              height: 500,
              child: ListView.builder(
                itemCount: favlist.length,
                itemBuilder: (context, index) => buildFav(index),
              ),
            ),
          ],
        ),
      ),
    );
  }
  Color teste(){
    for(String nome in favlist){
      if(nome == 'A New Hope'){
        return Colors.red;
      }
    }
    return Colors.lightGreenAccent;
  }

  Widget buildFav(int index) {

    return Container(
      margin: EdgeInsets.only(top: 30),
      width: 350,
      height: 110,
      decoration: BoxDecoration(
        border: Border.all(
          color: teste(),
          width: 3,
        ),
      ),
      child: Center(
        child: Text(
          favlist[index],
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}

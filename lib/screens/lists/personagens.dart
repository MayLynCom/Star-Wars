import 'package:flutter/material.dart';
import 'package:star_wars/screens/home/home_filmes.dart';
import 'package:star_wars/screens/lists/favoritos.dart';
import '../../models/lists.dart';
import '../home/components/header.dart';

class Personagens extends StatefulWidget {
  Personagens({
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
                Container(
                  margin: EdgeInsets.only(top: 30),
                  width: 125,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.green, width: 3),
                    color: Colors.green[100],
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
                itemCount: personagens.length,
                itemBuilder: (context, index) => buildPersonagens(index),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildPersonagens(int index) {
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
                  onPressed: () {
                    setState(() {
                      if(favlist.contains(personagens[index])){
                        favlist.remove(personagens[index]);
                        print(favlist);
                      }else{
                        favlist.add(personagens[index]);
                        print(favlist);
                      }
                    });
                  },
                  icon: favlist.contains(personagens[index])
                      ? Icon(Icons.favorite)
                      : Icon(Icons.favorite_border),
                  iconSize: 50,
                )
              ],
            ),
          );
  }


}

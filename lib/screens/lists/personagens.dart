import 'package:flutter/material.dart';
import 'package:star_wars/screens/home/home_filmes.dart';
import 'package:star_wars/screens/lists/favoritos.dart';
import '../../models/fav_list.dart';
import '../home/components/header.dart';

class Personagens extends StatefulWidget {
  Personagens({
    Key? key,
  }) : super(key: key);

  @override
  State<Personagens> createState() => _PersonagensState();
}

class _PersonagensState extends State<Personagens> {

  List<String> favoritos = [];


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
                      'Luke Skywalker',
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
                        if(favlist.contains('Luke Skywalker')){
                          favlist.remove('Luke Skywalker');
                          print(favlist);
                        }else{
                          favlist.add('Luke Skywalker');
                          print(favlist);
                        }
                      });
                    },
                    icon: favlist.contains('Luke Skywalker')
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border),
                    iconSize: 50,
                  )
                ],
              ),
            ),
            Container(
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
                      'C-3PO',
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
                        if(favlist.contains('C-3PO')){
                          favlist.remove('C-3PO');
                          print(favlist);
                        }else{
                          favlist.add('C-3PO');
                          print(favlist);
                        }
                      });
                    },
                    icon: favlist.contains('C-3PO')
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border),
                    iconSize: 50,
                  )
                ],
              ),
            ),
            Container(
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
                      'Darth Vader',
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
                        if(favlist.contains('Darth Vader')){
                          favlist.remove('Darth Vader');
                          print(favlist);
                        }else{
                          favlist.add('Darth Vader');
                          print(favlist);
                        }
                      });
                    },
                    icon: favlist.contains('Darth Vader')
                        ? Icon(Icons.favorite)
                        : Icon(Icons.favorite_border),
                    iconSize: 50,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }


}

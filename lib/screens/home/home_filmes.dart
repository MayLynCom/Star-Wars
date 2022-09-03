import 'package:flutter/material.dart';
import 'package:star_wars/screens/lists/favoritos.dart';
import 'package:star_wars/screens/lists/personagens.dart';
import 'components/header.dart';

//import 'package:http/http.dart' as http;

// fetch() async {
//   var url = Uri.https('https://swapi.dev/api/', 'films/1/');
//   var response = await http.get(url);
//   print(response.body);
// } tentar dps

class HomeFilmes extends StatefulWidget {
  HomeFilmes({Key? key}) : super(key: key);

  @override
  State<HomeFilmes> createState() => _HomeFilmesState();
}

class _HomeFilmesState extends State<HomeFilmes> {
  List<String> favoritos = [];

  bool saved = true;

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
                      'A New Hope',
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
                        if(saved){
                          saved = false;
                        }else{
                          saved = true;
                        }
                      });
                    },
                    icon: saved
                        ? Icon(Icons.favorite_border)
                        : Icon(Icons.favorite),
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
                      'The Empire Strikes Back',
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
                        if(saved){
                          saved = false;
                        }else{
                          saved = true;
                        }
                      });
                    },
                    icon: saved
                        ? Icon(Icons.favorite_border)
                        : Icon(Icons.favorite),
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
                      'Return Of The Jedi',
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
                        if(saved){
                          saved = false;
                        }else{
                          saved = true;
                        }
                      });
                    },
                    icon: saved
                        ? Icon(Icons.favorite_border)
                        : Icon(Icons.favorite),
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

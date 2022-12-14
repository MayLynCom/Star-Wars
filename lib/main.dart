import 'package:flutter/material.dart';
import 'package:star_wars/screens/home/home_filmes.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Star Wars',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeFilmes());
  }
}

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class FavList {
  final String title;
  final Color color;

  FavList({required this.title, required this.color});
}

List<FavList> favlists = [
];

Future<List> filmesAPI() async {
  var url = Uri.parse("https://swapi.dev/api/films");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    Map<String, dynamic> map = json.decode(response.body);

    List data = map['results'];
    return data;
  } else {
    throw Exception('Erro ao carregar dados do Servidor');
  }
}

Future<List> personagensAPI() async {
  var url = Uri.parse("https://swapi.dev/api/people");
  var response = await http.get(url);
  if (response.statusCode == 200) {
    Map<String, dynamic> map = json.decode(response.body);

    List data = map['results'];
    return data;
  } else {
    throw Exception('Erro ao carregar dados do Servidor');
  }
}

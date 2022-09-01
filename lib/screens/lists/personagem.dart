import 'package:flutter/material.dart';
import '../home/components/header.dart';
import '../home/components/menu.dart';
import '../home/components/card_names.dart';

class Personagem extends StatelessWidget {
  const Personagem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Column(
          children: [
            Header(),
            Menu(),
            CardNames(
              name: 'Luke Skywalker',
            ),
            CardNames(
              name: 'C-3PO',
            ),
            CardNames(
              name: 'Darth Vader',
            ),
          ],
        ),
      ),
    );
  }
}


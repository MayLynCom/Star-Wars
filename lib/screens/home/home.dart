import 'package:flutter/material.dart';
import 'components/header.dart';
import 'components/menu.dart';
import 'components/card_names.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
              name: 'A New Hope',
            ),
            CardNames(
              name: 'The Empire Strikes Back',
            ),
            CardNames(
              name: 'Return Of The Jedi',
            ),
          ],
        ),
      ),
    );
  }
}








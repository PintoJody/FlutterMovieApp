import 'package:flutter/material.dart';
import 'package:faker/faker.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            faker.image.image(width: 200, height: 250),
          ),
          const Text(
            "Bienvenue sur ALLOFILM",
            style: TextStyle(fontSize: 22),
          )
        ],
      ),
    );
  }
}

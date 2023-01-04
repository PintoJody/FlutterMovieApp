import 'package:flutter/material.dart';
import 'package:faker/faker.dart';
import 'package:url_launcher/url_launcher.dart';

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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  icon: const Icon(Icons.phone),
                  iconSize: 35,
                  onPressed: () {
                    launchUrl(Uri.parse("tel:0505050505"));
                  }),
              IconButton(
                  icon: const Icon(Icons.map),
                  iconSize: 35,
                  onPressed: () {
                  }),
              IconButton(
                  icon: const Icon(Icons.share),
                  iconSize: 35,
                  onPressed: () {
                  }),
            ],
          )
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_init/home_page.dart';
import 'package:flutter_init/movies_list.dart';
import 'package:flutter_init/service/SearchBar.dart';


void main() {
  runApp(MaterialApp(
      home:MyApp()));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  int _currentIndex = 0;
  
  setCurrentIndex(int index){
    setState(() {
      _currentIndex = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("AlloFilm"),
          actions: [
            IconButton(
                icon: const Icon(Icons.search),
                onPressed: () {
                  showSearch(
                    context: context,
                    delegate: MySearchDelegate(),
                  );
                },
            ),
          ],
        ),
        body: [
          HomePage(),
          MoviesList()
        ][_currentIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) => setCurrentIndex(index),
          selectedItemColor: Colors.blue,
          unselectedItemColor: Colors.grey,
          elevation: 10,
          items: const[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Accueil'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'Films',
            ),
          ],
        ),
    );
  }

}
import 'package:flutter/material.dart';
import 'package:flutter_init/home_page.dart';
import 'package:flutter_init/movies_list.dart';

void main() {
  runApp(const MyApp());
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
    return MaterialApp(
      home: Scaffold(
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
                }
            )
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
      ),
    );
  }

}

//WORK IN PROGRESS ...
class MySearchDelegate extends SearchDelegate {

  @override
  Widget? buildLeading(BuildContext context) => IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
  );

  @override
  List<Widget>? buildActions(BuildContext context) => [
    IconButton(
      icon: const Icon(Icons.clear),
      onPressed: (){
        if(query.isEmpty){
          close(context, null);
        }else{
          query = '';
        }
      },
    ),
  ];

  @override
  Widget buildSuggestions(BuildContext context) => const Text('suggestions');


  @override
  PreferredSizeWidget buildBottom(BuildContext context) {
    return const PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: Text('bottom'));
  }

  @override
  Widget buildResults(BuildContext context) => const Text('results');

}




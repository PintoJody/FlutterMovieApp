import 'package:flutter/material.dart';
import 'package:flutter_init/model/movies.dart';

import '../movie_details.dart';

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
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    List matchMovie = [];
    for(var movie in movieList){
      if(movie.title.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(movie.title);
        matchMovie.add(movie);
      }
    }

    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
          onTap: (){
            Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => DetailMovieView(matchMovie[index]))
            );
          },
        );
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for(var movie in movieList){
      if(movie.title.toLowerCase().contains(query.toLowerCase())){
        matchQuery.add(movie.title);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index){
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

}
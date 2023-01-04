import 'package:flutter/material.dart';
import 'package:flutter_init/model/movies.dart';
import 'package:flutter_init/movie_details.dart';
import 'package:flutter_init/service/FavoriteWidget.dart';

class MoviesList extends StatefulWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  State<MoviesList> createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: movieList.length,
        itemBuilder: (context, index){
          Movie movie = movieList[index];

          return Card(
            child: ListTile(
              leading: Image.asset("assets/img/" + movie.imgUrl),
              title: Text(movie.title),
              subtitle: Text(movie.note),
              trailing: FavoriteWidget(),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailMovieView(movie))
                );
              },
            ),
          );
        },
      ),
    );

  }
}

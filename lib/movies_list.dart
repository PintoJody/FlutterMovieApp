import 'package:flutter/material.dart';
import 'package:flutter_init/model/movies.dart';
import 'package:flutter_init/movie_details.dart';

class MoviesList extends StatefulWidget {
  const MoviesList({Key? key}) : super(key: key);

  @override
  State<MoviesList> createState() => _MoviesListState();
}

class _MoviesListState extends State<MoviesList> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5
        ),
        itemCount: movieList.length,
        itemBuilder: (context, index){
          Movie movie = movieList[index];

          return Card(
            child: ListTile(
              leading: Image.asset("assets/img/" + movie.imgUrl),
              title: Text(movie.title),
              subtitle: Text(movie.note),
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

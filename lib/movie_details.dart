import 'package:flutter/material.dart';
import 'package:flutter_init/model/movies.dart';

class DetailMovieView extends StatelessWidget {
  final Movie movie;

  const DetailMovieView(this.movie);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(movie.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img/" + movie.imgUrl),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                movie.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 22.0),
              )
            ),
            Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movie.note + '/5',
                  textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16.0),
                )
            ),
          ],
        ),
      ),
    );
  }
}



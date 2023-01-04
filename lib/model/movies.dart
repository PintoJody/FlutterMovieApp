import 'package:flutter/material.dart';

class Movie {
  String title;
  String note;
  String imgUrl;

  Movie({
    required this.title,
    required this.note,
    required this.imgUrl,
  });
}

  List<Movie> movieList = [
    Movie(
        title : 'Joker',
        note : '4.4',
        imgUrl : 'joker.jpg'
    ),
    Movie(
        title : 'Avatar 2',
        note : '4.3',
        imgUrl : 'avatar_2.jpg'
    ),
    Movie(
        title : 'Spider-Man : New Generation',
        note : '4.4',
        imgUrl : 'spiderman_ng.jpg'
    ),
    Movie(
        title : 'The Batman',
        note : '4.1',
        imgUrl : 'theBatman.jpg'
    ),
    Movie(
        title : 'Le loup de Wall Street',
        note : '4.2',
        imgUrl : 'loup_wall_street.jpg'
    ),
    Movie(
        title : 'Parasite',
        note : '4.5',
        imgUrl : 'parasite.jpg'
    ),
    Movie(
        title : 'Demon Slayer: le train de l\'infini',
        note : '4.1',
        imgUrl : 'demonSlayerMovie.jpg'
    ),
    Movie(
        title : 'Avengers: Infinity War',
        note : '4.3',
        imgUrl : 'infinityWar.jpg'
    ),
    Movie(
        title : 'Get Out',
        note : '4',
        imgUrl : 'GetOut.jpg'
    ),
    Movie(
        title : 'Interstellar',
        note : '4,5',
        imgUrl : 'interstellar.jpg'
    ),
    Movie(
        title : 'Inception',
        note : '4,5',
        imgUrl : 'inception.jpg'
    ),
    Movie(
        title : 'Matrix',
        note : '4,4',
        imgUrl : 'matrix.jpg'
    ),
  ];

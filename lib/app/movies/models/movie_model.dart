import 'dart:convert';

import 'package:varios_apps/app/movies/services/movie_service.dart';

class MovieModel {
  final String name;
  final String age;

  MovieModel(this.name, this.age);

  static Future<List<MovieModel>> fromJsonToList(MovieService service) async {
    String _moviesString = await service.getMoviesFromAPI();
    List _moviesList = jsonDecode(_moviesString);

    List<MovieModel> _movies = _moviesList
        .map((e) => MovieModel(e["name"], (e["age"]).toString()))
        .toList();
    return _movies;
  }
}

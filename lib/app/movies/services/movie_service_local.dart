import 'dart:convert';

import 'package:flutter/services.dart';

import 'package:varios_apps/app/movies/interfaces/movie_interface.dart';
import 'package:varios_apps/app/movies/models/movie_model.dart';

class MovieLocalService implements MovieInterface {
  @override
  Future<List<MovieModel>> getMovies() async {
    String movieString = await rootBundle.loadString('assets/movies.json');
    List _moviesList = jsonDecode(movieString);
    List<MovieModel> _movies = _moviesList
        .map((e) => MovieModel(e["name"], (e["age"]).toString()))
        .toList();
    return _movies;
  }
}

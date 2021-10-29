import 'dart:convert';
import 'package:flutter/services.dart';

class MoviesModel {
  final List _movies = [];

  MoviesModel();

  Future<List> getMovies() async {
    var data = await rootBundle.loadString("assets/movies.json");
    var _movies = jsonDecode(data);
    print(_movies);
    return _movies;
  }
}

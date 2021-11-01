import 'package:flutter/services.dart';
import 'package:varios_apps/app/movies/models/movie_model.dart';

class MovieService {
  Future<String> getMoviesFromLocal() async {
    return rootBundle.loadString('assets/movies.json');
  }

  Future<String> getMoviesFromAPI() async {
    return rootBundle.loadString('assets/movies.json');
  }
}

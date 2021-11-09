import 'package:flutter/cupertino.dart';
import 'package:varios_apps/app/movies/interfaces/movie_interface.dart';
import 'package:varios_apps/app/movies/models/movie_model.dart';

class MovieController extends ChangeNotifier {
  MovieController({required MovieInterface this.interface});
  MovieInterface interface;
  List<MovieModel> _movies = [];
  List<MovieModel> get movies => _movies;

  getMovies() async {
    _movies = await interface.getMovies();
    notifyListeners();
  }
}

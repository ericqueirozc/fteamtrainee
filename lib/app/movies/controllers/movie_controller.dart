import 'package:flutter/cupertino.dart';
import 'package:varios_apps/app/movies/models/movie_model.dart';
import 'package:varios_apps/app/movies/services/movie_service.dart';

class MoviesController extends ChangeNotifier {
  List<MovieModel> _movies = [];

  List<MovieModel> get movies => _movies;

  getMovies() async {
    _movies = await MovieModel.fromJsonToList(MovieService());
    notifyListeners();
  }
}

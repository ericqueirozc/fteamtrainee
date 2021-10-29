import 'package:varios_apps/app/movies/models/movies_model.dart';

class MoviesController {
  MoviesModel movieModel = MoviesModel();

  List movies = [];

  getMovies() async {
    movies = await movieModel.getMovies();
  }
}

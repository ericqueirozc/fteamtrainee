import 'package:varios_apps/app/movies/models/movie_model.dart';

abstract class MovieInterface {
  Future<List<MovieModel>> getMovies();
}

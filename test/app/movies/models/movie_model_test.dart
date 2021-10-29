import 'package:flutter_test/flutter_test.dart';
import 'package:varios_apps/app/movies/models/movies_model.dart';

void main() {
  test('getMovies() deve retornar uma string de movies', () {
    MoviesModel().getMovies();
  });
}

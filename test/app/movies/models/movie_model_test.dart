import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:varios_apps/app/movies/models/movie_model.dart';
import 'package:varios_apps/app/movies/services/movie_service.dart';

class MovieServiceMock extends Mock implements MovieService {
  @override
  Future<String> getMoviesFromLocal() async {
    return jsonEncode([
      {"name": "Auto da Compadecida", "age": 1987},
      {"name": "Homem aranha 3", "age": 2021}
    ]);
  }
}

void main() {
  test('fromJsonToList() deve retornar uma lista de tamanho 2', () async {
    var _movies = await MovieModel.fromJsonToList(MovieServiceMock());
    expect(_movies.length, 2);
  });
  test(
      '_movies.first.age deve retornar quando o primeiro filme da lista foi lançado',
      () async {
    var _movies = await MovieModel.fromJsonToList(MovieServiceMock());
    expect(_movies.first.age, '1987');
  });

  test('_movies.last.title deve retornar o nome do ultimo filme da lista',
      () async {
    var _movies = await MovieModel.fromJsonToList(MovieServiceMock());
    expect(_movies.last.name, 'Homem aranha 3');
  });
}

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:varios_apps/app/movies/models/movie_model.dart';
import 'package:varios_apps/app/movies/services/movie_service_local.dart';

class MovieServiceMock extends Mock implements MovieService {
  @override
  Future<String> getMoviesFromLocal() async {
    return jsonEncode([
      {"name": "Auto da Compadecida", "age": 1987},
      {"name": "Homem aranha 3", "age": 2021},
      {"name": "Vingadores Ultimato", "age": 2019},
      {"name": "Shrek 3", "age": 2007}
    ]);
  }

  Future<String> getMoviesFromAPI() async {
    return jsonEncode([
      {"name": "Auto da Compadecida", "age": 1987},
      {"name": "Homem aranha 3", "age": 2021},
      {"name": "Vingadores Ultimato", "age": 2019},
      {"name": "Shrek 3", "age": 2007}
    ]);
  }
}

void main() {
  //API
  test('fromJsonToList() deve retornar uma lista de tamanho 4', () async {
    var _movies = await MovieModel.fromJsonToList(MovieService());
    expect(_movies.length, 4);
  });
  test(
      '_movies.first.age deve retornar quando o primeiro filme da lista foi lançado',
      () async {
    var _movies = await MovieModel.fromJsonToList(MovieService());
    expect(_movies.first.age, '1987');
  });

  test('_movies.last.title deve retornar o nome do ultimo filme da lista',
      () async {
    var _movies = await MovieModel.fromJsonToList(MovieService());
    expect(_movies.last.name, 'Shrek 3');
  });

  //Service Mockado
  test('fromJsonToList() deve retornar uma lista de tamanho 4', () async {
    var _movies = await MovieModel.fromJsonToList(MovieServiceMock());
    expect(_movies.length, 4);
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
    expect(_movies.last.name, 'Shrek 3');
  });
}

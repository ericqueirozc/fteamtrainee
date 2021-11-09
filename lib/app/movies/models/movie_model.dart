import 'dart:convert';

import 'package:varios_apps/app/movies/interfaces/movie_interface.dart';
import 'package:varios_apps/app/movies/services/movie_service_local.dart';

class MovieModel {
  final String name;
  final String age;

  MovieModel(this.name, this.age);
}

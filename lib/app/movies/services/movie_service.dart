import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class MovieService {
  Future<String> getMoviesFromLocal() async {
    return rootBundle.loadString('assets/movies.json');
  }

  Future<String> getMoviesFromAPI() async {
    var url = Uri.parse(
        "https://my-json-server.typicode.com/ericqueirozc/fteamtraineeapi/movies");
    var response = await http.get(url);
    return response.body;
  }
}

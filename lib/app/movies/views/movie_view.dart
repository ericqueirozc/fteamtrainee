import 'package:flutter/material.dart';
import 'package:varios_apps/app/movies/views/components/movie_button_component.dart';
import 'package:varios_apps/app/movies/views/components/movie_list_component.dart';

class MoviesView extends StatefulWidget {
  const MoviesView({Key? key}) : super(key: key);

  @override
  _MoviesViewState createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filmes"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [MovieList(), MovieButton()],
      ),
    );
  }
}

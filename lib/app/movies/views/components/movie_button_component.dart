import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:varios_apps/app/movies/controllers/movie_controller.dart';

class MovieButton extends StatelessWidget {
  const MovieButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MovieController controller = context.read<MovieController>();

    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        height: 55,
        child: ElevatedButton(
            onPressed: () async {
              await controller.getMovies();
            },
            child: Text(
              "Buscar filmes",
              style: TextStyle(fontSize: 18),
            )),
      ),
    );
  }
}

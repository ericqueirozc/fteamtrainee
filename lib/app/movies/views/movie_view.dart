import 'package:flutter/material.dart';
import 'package:varios_apps/app/movies/controllers/movie_controller.dart';

class MoviesView extends StatefulWidget {
  const MoviesView({Key? key}) : super(key: key);

  @override
  _MoviesViewState createState() => _MoviesViewState();
}

class _MoviesViewState extends State<MoviesView> {
  final MoviesController controller = MoviesController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Filmes"),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height * .86,
            child: ListView.builder(
                itemCount: controller.movies.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      title: Text(controller.movies[index].name),
                      subtitle: Text(controller.movies[index].age.toString()),
                    ),
                  );
                }),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: double.infinity,
              height: 55,
              child: ElevatedButton(
                  onPressed: () async {
                    await controller.getMovies();
                    setState(() {});
                  },
                  child: Text(
                    "Buscar Filmes",
                    style: TextStyle(fontSize: 18),
                  )),
            ),
          )
        ],
      ),
    );
  }
}

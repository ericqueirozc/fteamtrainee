import 'package:flutter/material.dart';
import 'package:varios_apps/app/cpf/views/cpf_view.dart';
import 'package:varios_apps/app/movies/views/movie_view.dart';

import 'conversor_de_moeda/views/price_view.dart';
import 'home/views/home_view.dart';
import 'imc/views/imc_home_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const HomeView(),
        '/imc': (context) => const ImcHomeView(),
        '/price': (context) => const PriceView(),
        '/cpf': (context) => const CpfView(),
        '/movies': (context) => const MoviesView()
      },
    );
  }
}

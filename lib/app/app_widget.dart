import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:varios_apps/app/conversor_de_moeda/controllers/price_%20controller.dart';
import 'package:varios_apps/app/cpf/controllers/cpf_controller.dart';
import 'package:varios_apps/app/cpf/views/cpf_view.dart';
import 'package:varios_apps/app/imc/controllers/imc_controller.dart';
import 'package:varios_apps/app/movies/controllers/movie_controller.dart';
import 'package:varios_apps/app/movies/views/movie_view.dart';

import 'conversor_de_moeda/views/price_view.dart';
import 'home/views/home_view.dart';
import 'imc/views/imc_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => PriceController()),
        ChangeNotifierProvider(create: (_) => CpfController()),
        ChangeNotifierProvider(create: (_) => ImcController()),
        ChangeNotifierProvider(create: (_) => MovieController())
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (context) => const HomeView(),
          '/imc': (context) => const ImcView(),
          '/price': (context) => const PriceView(),
          '/cpf': (context) => const CpfView(),
          '/movies': (context) => const MoviesView()
        },
      ),
    );
  }
}

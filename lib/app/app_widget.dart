import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:varios_apps/app/conversor_de_moeda/controllers/price_%20controller.dart';
import 'package:varios_apps/app/cpf/controllers/cpf_controller.dart';
import 'package:varios_apps/app/cpf/views/cpf_view.dart';
import 'package:varios_apps/app/imc/controllers/imc_controller.dart';
import 'package:varios_apps/app/movies/controllers/movie_controller.dart';
import 'package:varios_apps/app/movies/interfaces/movie_interface.dart';
import 'package:varios_apps/app/movies/services/movie_service_api.dart';
import 'package:varios_apps/app/movies/views/movie_view.dart';
import 'package:varios_apps/app/theme/theme_controller.dart';

import 'conversor_de_moeda/views/price_view.dart';
import 'home/views/home_view.dart';
import 'imc/views/imc_view.dart';
import 'movies/services/movie_service_local.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider(create: (_) => PriceController()),
        Provider<MovieInterface>(create: (_) => MovieLocalService()),
        ChangeNotifierProvider(create: (_) => CpfController()),
        ChangeNotifierProvider(create: (_) => ImcController()),
        ChangeNotifierProvider(
            create: (context) => MovieController(interface: context.read())),
        ChangeNotifierProvider(create: (_) => ThemeController())
      ],
      builder: (context, widget) {
        Brightness brightness = context.watch<ThemeController>().brightness;
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
            brightness: brightness,
            primarySwatch: Colors.blue,
          ),
          routes: {
            '/': (context) => HomeView(),
            '/imc': (context) => const ImcView(),
            '/price': (context) => const PriceView(),
            '/cpf': (context) => const CpfView(),
            '/movies': (context) => const MoviesView()
          },
        );
      },
    );
  }
}

import 'package:flutter/material.dart';

import 'Home/Views/home_view.dart';
import 'IMC/Views/imc_home_view.dart';
import 'conversor_de_moeda/views/conversor_home_view.dart';

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
        '/imc': (context) => const IMCHomeView(),
        '/conversor': (context) => const CDMHomeView()
      },
    );
  }
}

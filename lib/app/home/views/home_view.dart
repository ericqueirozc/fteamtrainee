import 'package:flutter/material.dart';
import 'package:varios_apps/app/home/views/components/app_card_component.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meus APP's"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * .87,
              child: ListView(
                children: [
                  AppCard(title: "IMC", route: '/imc'),
                  AppCard(title: "Conversor de Moeda", route: '/price'),
                  AppCard(title: "Valido de CPF", route: '/cpf'),
                  AppCard(title: "Filmes", route: '/movies')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
                  Card(
                    child: ListTile(
                      title: Text("IMC"),
                      onTap: () {
                        Navigator.pushNamed(context, '/imc');
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Conversor de Moeda"),
                      onTap: () {
                        Navigator.pushNamed(context, '/conversor');
                      },
                    ),
                  ),
                  Card(
                    child: ListTile(
                      title: Text("Validador de CPF"),
                      onTap: () {
                        Navigator.pushNamed(context, '/cpf');
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

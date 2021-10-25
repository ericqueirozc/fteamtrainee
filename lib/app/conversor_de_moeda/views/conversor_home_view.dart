import 'package:flutter/material.dart';
import 'package:varios_apps/app/conversor_de_moeda/controllers/conversor_controller.dart';

class ConversorHomeView extends StatefulWidget {
  const ConversorHomeView({Key? key}) : super(key: key);

  @override
  _ConversorHomeViewState createState() => _ConversorHomeViewState();
}

class _ConversorHomeViewState extends State<ConversorHomeView> {
  final ConversorController controller = ConversorController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Conversor de Moedas"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                controller: controller.realController,
                onChanged: (value) {
                  value == ""
                      ? 0
                      : controller.dolarAndEuroFromReal(double.parse(value));
                },
                decoration: InputDecoration(
                    labelText: "Real", border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  value == ""
                      ? 0
                      : controller.realAndEuroFromDollar(double.parse(value));
                },
                controller: controller.dollarController,
                decoration: InputDecoration(
                    labelText: "Dolar", border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              TextFormField(
                onChanged: (value) {
                  value == ""
                      ? 0
                      : controller.euroAndDolFromEuro(double.parse(value));
                },
                controller: controller.euroController,
                decoration: InputDecoration(
                    labelText: "Euro", border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

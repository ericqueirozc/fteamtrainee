import 'package:flutter/material.dart';
import 'package:varios_apps/app/imc/controllers/imc_controller.dart';

class ImcHomeView extends StatefulWidget {
  const ImcHomeView({Key? key}) : super(key: key);

  @override
  _ImcHomeViewState createState() => _ImcHomeViewState();
}

class _ImcHomeViewState extends State<ImcHomeView> {
  final ImcController controller = ImcController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  controller.peso = double.tryParse(value) ?? 0;
                },
                decoration: InputDecoration(
                    labelText: "Peso", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              TextField(
                onChanged: (value) {
                  controller.altura = double.tryParse(value) ?? 0;
                },
                decoration: InputDecoration(
                    labelText: "Altura", border: OutlineInputBorder()),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: double.infinity,
                height: 55,
                child: ElevatedButton(
                    onPressed: () {
                      controller.calculateImc();
                    },
                    child: Text(
                      "Calcular",
                      style: TextStyle(fontSize: 18),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Seu IMC é",
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: Colors.black45),
              ),
              SizedBox(
                height: 10,
              ),
              AnimatedBuilder(
                animation: controller,
                builder: (context, widget) {
                  return Text(controller.result != 0.0
                      ? controller.result
                      : "Informações invalidas.");
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:varios_apps/app/imc/controllers/imc_home_controller.dart';

class ImcHomeView extends StatefulWidget {
  const ImcHomeView({Key? key}) : super(key: key);

  @override
  _ImcHomeViewState createState() => _ImcHomeViewState();
}

class _ImcHomeViewState extends State<ImcHomeView> {
  final ImcHomeController controller = ImcHomeController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
      ),
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, widget) => Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  controller: controller.pesoController,
                  decoration: InputDecoration(
                      labelText: "Peso", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: controller.alturaController,
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
                        controller.calcularImc();
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
                Text(
                    controller.result.toStringAsFixed(2) == "0.0"
                        ? "Preencha os campos"
                        : controller.result.toStringAsFixed(2),
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black87))
              ],
            ),
          ),
        ),
      ),
    );
    ;
  }
}

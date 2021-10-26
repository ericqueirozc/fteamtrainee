import 'package:flutter/material.dart';
import 'package:varios_apps/app/cpf/controllers/cpf_controller.dart';

class CpfView extends StatefulWidget {
  const CpfView({Key? key}) : super(key: key);

  @override
  _CpfViewState createState() => _CpfViewState();
}

class _CpfViewState extends State<CpfView> {
  final CpfController controller = CpfController.instance;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Validador de CPF"),
      ),
      body: AnimatedBuilder(
        animation: controller,
        builder: (context, widget) {
          return Form(
              child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: [
                TextFormField(
                  controller: controller.cpfController,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), labelText: "CPF"),
                ),
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 55,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      controller.validate();
                    },
                    child: Text(
                      "Validar",
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                (controller.isTextActive
                    ? Text(
                        controller.isValid ? "CPF Valido" : "CPF Invalido",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      )
                    : SizedBox()),
                (controller.isWarningActive
                    ? Text(
                        "Digite corretamente o CPF",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.redAccent),
                      )
                    : SizedBox())
              ],
            ),
          ));
        },
      ),
    );
  }
}

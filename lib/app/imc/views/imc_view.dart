import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:varios_apps/app/imc/controllers/imc_controller.dart';
import 'package:varios_apps/app/imc/views/components/calculate_Imc_button_component.dart';
import 'package:varios_apps/app/imc/views/components/imc_result_text_component.dart';
import 'package:varios_apps/app/imc/views/components/imc_result_component.dart';
import 'package:varios_apps/app/imc/views/components/spacer_component.dart';

import 'components/custom_text_field_component.dart';

class ImcView extends StatefulWidget {
  const ImcView({Key? key}) : super(key: key);

  @override
  _ImcViewState createState() => _ImcViewState();
}

class _ImcViewState extends State<ImcView> {
  @override
  Widget build(BuildContext context) {
    final ImcController controller = context.read<ImcController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora de IMC"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          child: Column(
            children: [
              CustomTextField(
                  onChanged: (value) =>
                      controller.peso = double.tryParse(value)!,
                  labelText: "Peso"),
              SpacerComponent(),
              CustomTextField(
                onChanged: (value) {
                  controller.altura = double.tryParse(value)!;
                },
                labelText: "Altura",
              ),
              SpacerComponent(),
              CalculateImcButtom(),
              SpacerComponent(),
              ImcResultText(),
              SpacerComponent(),
              ImcResult()
            ],
          ),
        ),
      ),
    );
  }
}

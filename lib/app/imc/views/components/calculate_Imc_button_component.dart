import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:varios_apps/app/imc/controllers/imc_controller.dart';

class CalculateImcButtom extends StatelessWidget {
  const CalculateImcButtom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImcController controller = context.read<ImcController>();

    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: () => controller.calculateImc(),
        child: Text(
          "Calcular",
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}

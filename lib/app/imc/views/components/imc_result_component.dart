import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:varios_apps/app/imc/controllers/imc_controller.dart';

class ImcResult extends StatelessWidget {
  const ImcResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImcController controller = context.read<ImcController>();

    return AnimatedBuilder(
      animation: controller,
      builder: (context, widget) {
        return Text(controller.result != 0.0
            ? controller.result
            : "Informações invalidas.");
      },
    );
  }
}

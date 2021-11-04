import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:varios_apps/app/cpf/controllers/cpf_controller.dart';

import 'activable_text_component.dart';

class WarningCpfMessages extends StatelessWidget {
  const WarningCpfMessages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CpfController controller = context.read<CpfController>();
    return (controller.isWarningActive
        ? ActivableText(
            text: "Digite corretamente o CPF",
            color: Colors.redAccent,
          )
        : SizedBox());
  }
}

import 'package:flutter/material.dart';
import 'package:provider/src/provider.dart';
import 'package:varios_apps/app/cpf/controllers/cpf_controller.dart';

import 'activable_text_component.dart';

class ResultMessageCpf extends StatelessWidget {
  const ResultMessageCpf({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CpfController controller = context.read<CpfController>();
    return controller.isTextActive
        ? ActivableText(
            text: controller.isValid ? "CPF Valido" : "CPF Invalido",
            color: Colors.black87,
          )
        : SizedBox();
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/src/provider.dart';
import 'package:varios_apps/app/cpf/controllers/cpf_controller.dart';
import 'package:varios_apps/app/cpf/views/text_formatter/cpf_formatter.dart';

class CpfTextField extends StatelessWidget {
  const CpfTextField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final CpfController controller = context.read<CpfController>();

    return TextField(
      keyboardType: TextInputType.number,
      inputFormatters: [
        LengthLimitingTextInputFormatter(14),
        FilteringTextInputFormatter.digitsOnly,
        CpfTextFormatter()
      ],
      controller: controller.cpfController,
      decoration:
          InputDecoration(border: OutlineInputBorder(), labelText: "CPF"),
    );
  }
}

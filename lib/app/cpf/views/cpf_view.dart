import 'package:flutter/material.dart';

import 'package:provider/src/provider.dart';
import 'package:varios_apps/app/cpf/controllers/cpf_controller.dart';
import 'package:varios_apps/app/cpf/views/components/cpf_text_field_component.dart';
import 'package:varios_apps/app/cpf/views/components/result_message_cpf_component.dart';
import 'package:varios_apps/app/cpf/views/components/validate_cpf_buttom_component.dart';
import 'package:varios_apps/app/cpf/views/components/warning_messages_cpf_component.dart';

class CpfView extends StatefulWidget {
  const CpfView({Key? key}) : super(key: key);

  @override
  _CpfViewState createState() => _CpfViewState();
}

class _CpfViewState extends State<CpfView> {
  @override
  Widget build(BuildContext context) {
    final CpfController controller = context.read<CpfController>();
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
                CpfTextField(),
                SizedBox(
                  height: 10,
                ),
                ValidateCpfButtom(),
                SizedBox(
                  height: 20,
                ),
                ResultMessageCpf(),
                WarningCpfMessages()
              ],
            ),
          ));
        },
      ),
    );
  }
}

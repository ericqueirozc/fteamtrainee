import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
                  keyboardType: TextInputType.number,
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(14),
                    FilteringTextInputFormatter.digitsOnly,
                    CpfTextFormatter()
                  ],
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

class CpfTextFormatter extends TextInputFormatter {
  StringBuffer buffer = StringBuffer();
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String cleanInput = newValue.text.replaceFirst(RegExp('.'), '');
    int cleanInputSize = cleanInput.length;
    if (cleanInputSize > 2 && cleanInputSize < 6) {
      return TextEditingValue(
          text: newValue.text.substring(0, 3) +
              "." +
              newValue.text.substring(3, newValue.text.length),
          selection: TextSelection.collapsed(offset: newValue.text.length + 1));
    }
    if (cleanInputSize > 5 && cleanInputSize < 9) {
      return TextEditingValue(
          text: newValue.text.substring(0, 3) +
              "." +
              newValue.text.substring(3, 6) +
              "." +
              (newValue.text.substring(6, newValue.text.length)),
          selection: TextSelection.collapsed(offset: newValue.text.length + 2));
    }
    if (cleanInputSize > 8 && cleanInputSize < 11) {
      return TextEditingValue(
          text: newValue.text.substring(0, 3) +
              "." +
              newValue.text.substring(3, 6) +
              "." +
              newValue.text.substring(6, 9) +
              "-" +
              newValue.text.substring(9, newValue.text.length),
          selection: TextSelection.collapsed(offset: newValue.text.length + 3));
    }

    return newValue;
  }
}

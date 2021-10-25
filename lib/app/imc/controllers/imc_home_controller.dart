import 'package:flutter/cupertino.dart';
import 'package:varios_apps/app/imc/models/imc_model.dart';

class ImcHomeController extends ChangeNotifier {
  ImcHomeController._();
  static ImcHomeController instance = ImcHomeController._();

  //Variables
  double result = 0.0;
  TextEditingController pesoController = TextEditingController();
  TextEditingController alturaController = TextEditingController();
  double peso = 0.0;
  double altura = 0.0;

  //Methods
  calcularImc() {
    print("foi");
    if (pesoController.text != "" && alturaController.text != "") {
      peso = double.parse(pesoController.text);
      altura = double.parse(alturaController.text);
      result = peso / (altura * altura);
      notifyListeners();
    }
  }

  bool validate() {
    try {
      double.parse(pesoController.text);
      double.parse(alturaController.text);
      return true;
    } catch (e) {
      return false;
    }
  }
}

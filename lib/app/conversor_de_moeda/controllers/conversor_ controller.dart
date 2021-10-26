import 'package:flutter/material.dart';
import 'package:varios_apps/app/conversor_de_moeda/models/conversor_model.dart';

class ConversorController {
  ConversorController._();
  static ConversorController instance = ConversorController._();

  //Properties
  TextEditingController dollarController = TextEditingController();
  TextEditingController euroController = TextEditingController();
  TextEditingController realController = TextEditingController();
  ConversorModel conversorModel = ConversorModel();

  //Methods
  clearFields() {
    dollarController.text = "";
    euroController.text = "";
    realController.text = "";
  }

  realToDollarAndEuro(input) {
    dollarController.text = conversorModel
        .converter(input, conversorModel.real, conversorModel.dollar)
        .toStringAsFixed(2);
    euroController.text = conversorModel
        .converter(double.parse(dollarController.text), conversorModel.euro,
            conversorModel.dollar)
        .toStringAsFixed(2);
  }

  dollarToRealAndEuro(input) {
    realController.text = conversorModel
        .converter(input, conversorModel.real, conversorModel.dollar)
        .toStringAsFixed(2);
    euroController.text = conversorModel
        .converter(double.parse(dollarController.text), conversorModel.euro,
            conversorModel.dollar)
        .toStringAsFixed(2);
  }

  euroToRealAndDollar(input) {
    realController.text = conversorModel
        .converter(input, conversorModel.real, conversorModel.euro)
        .toStringAsFixed(2);
    dollarController.text = conversorModel
        .converter(input, conversorModel.dollar, conversorModel.euro)
        .toStringAsFixed(2);
  }
}

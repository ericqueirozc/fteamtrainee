import 'package:flutter/material.dart';
import 'package:varios_apps/app/conversor_de_moeda/models/conversor_model.dart';

class ConversorController {
  ConversorController._();
  static ConversorController instance = ConversorController._();

  //Properties
  TextEditingController dollarController = TextEditingController();
  TextEditingController euroController = TextEditingController();
  TextEditingController realController = TextEditingController();
  PriceModel conversorModel = PriceModel();

  //Methods
  clearFields() {
    dollarController.text = "";
    euroController.text = "";
    realController.text = "";
  }

  realToDollarAndEuro(input) {
    dollarController.text = conversorModel
        .converter(input, conversorModel.priceDollar, conversorModel.priceReal)
        .toStringAsFixed(2);
    euroController.text = conversorModel
        .converter(input, conversorModel.priceEuro, conversorModel.priceReal)
        .toStringAsFixed(2);
  }

  dollarToRealAndEuro(input) {
    realController.text = conversorModel
        .converter(input, conversorModel.priceReal, conversorModel.priceDollar)
        .toStringAsFixed(2);
    euroController.text = conversorModel
        .converter(input, conversorModel.priceEuro, conversorModel.priceDollar)
        .toStringAsFixed(2);
  }

  euroToRealAndDollar(input) {
    realController.text = conversorModel
        .converter(input, conversorModel.priceReal, conversorModel.priceEuro)
        .toStringAsFixed(2);
    dollarController.text = conversorModel
        .converter(input, conversorModel.priceDollar, conversorModel.priceEuro)
        .toStringAsFixed(2);
  }
}

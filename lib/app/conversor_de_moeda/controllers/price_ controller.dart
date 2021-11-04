import 'package:flutter/material.dart';
import 'package:varios_apps/app/conversor_de_moeda/models/price_model.dart';

class PriceController {
  PriceController();

  //Properties
  TextEditingController dollarController = TextEditingController();
  TextEditingController euroController = TextEditingController();
  TextEditingController realController = TextEditingController();
  PriceModel priceModel = PriceModel();

  //Methods
  clearFields() {
    dollarController.text = "";
    euroController.text = "";
    realController.text = "";
  }

  realToDollarAndEuro(input) {
    dollarController.text = priceModel
        .converter(input, priceModel.priceDollar, priceModel.priceReal)
        .toStringAsFixed(2);
    euroController.text = priceModel
        .converter(input, priceModel.priceEuro, priceModel.priceReal)
        .toStringAsFixed(2);
  }

  dollarToRealAndEuro(input) {
    realController.text = priceModel
        .converter(input, priceModel.priceDollar, priceModel.priceReal)
        .toStringAsFixed(2);
    euroController.text = priceModel
        .converter(input, priceModel.priceEuro, priceModel.priceDollar)
        .toStringAsFixed(2);
  }

  euroToRealAndDollar(input) {
    realController.text = priceModel
        .converter(input, priceModel.priceEuro, priceModel.priceReal)
        .toStringAsFixed(2);
    dollarController.text = priceModel
        .converter(input, priceModel.priceDollar, priceModel.priceEuro)
        .toStringAsFixed(2);
  }
}

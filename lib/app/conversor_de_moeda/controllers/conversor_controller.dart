import 'package:flutter/cupertino.dart';

class ConversorController {
  ConversorController._();
  static ConversorController instance = ConversorController._();

  //Variables
  TextEditingController realController = TextEditingController();
  TextEditingController euroController = TextEditingController();
  TextEditingController dollarController = TextEditingController();

  //Methods
  double valueRealxDol = 0.18;
  double valueRealxEuro = 0.15;
  double valueDolxReal = 5.59;
  double valueDolxEuro = 1.16;
  double valueEuroxReal = 6.48;
  double valueEuroxDol = 0.86;

  dolarAndEuroFromReal(double real) {
    if (real != "") {
      final resultDollar = valueRealxDol * real;
      dollarController.text = resultDollar.toStringAsFixed(2);

      final resultEuro = valueRealxEuro * real;
      euroController.text = resultEuro.toStringAsFixed(2);
    } else {
      realController.text = "";
      euroController.text = "";
      dollarController.text = "";
    }
  }

  realAndEuroFromDollar(double dollar) {
    if (dollar != "") {
      var resultReal = valueDolxReal * dollar;
      realController.text = resultReal.toStringAsFixed(2);

      var resultEuro = valueDolxEuro * dollar;
      euroController.text = resultEuro.toStringAsFixed(2);
    }
  }

  euroAndDolFromEuro(double euro) {
    if (euro != "") {
      var resultReal = valueEuroxReal * euro;
      realController.text = resultReal.toString();

      var resultDol = valueDolxEuro * euro;
      dollarController.text = resultDol.toString();
    }
  }
}

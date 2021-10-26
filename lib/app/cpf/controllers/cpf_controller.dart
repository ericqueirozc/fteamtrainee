import 'package:flutter/material.dart';
import 'package:varios_apps/app/cpf/models/cpf_model.dart';

class CpfController extends ChangeNotifier {
  CpfController._();
  static CpfController instance = CpfController._();

  //Variables
  TextEditingController cpfController = TextEditingController();
  var cpfModel = CPF();
  bool isTextActive = false;
  bool isWarningActive = false;
  bool isValid = false;
  //Methods

  validate() {
    if (cpfController.text.length == 11) {
      try {
        int.parse(cpfController.text);
        this.isWarningActive = false;
        List<int> cpfInt = cpfModel.fromStringToListOfInt(cpfController.text);
        int sum = cpfModel.multiplyEachByTenDecAndSum(cpfInt);
        int dig = cpfModel.getDigit(sum);
        int sum2 = cpfModel.multiplyEachByElevenDecAndSum(cpfInt);
        int dig2 = cpfModel.getDigit(sum2);
        isTextActive = true;
        (dig == cpfInt[9] && dig2 == cpfInt[10])
            ? this.isValid = true
            : this.isValid = false;
        notifyListeners();
      } catch (e) {
        this.isWarningActive = true;
        notifyListeners();
      }
    } else {
      isTextActive = false;
      this.isWarningActive = true;
      notifyListeners();
    }
  }
}

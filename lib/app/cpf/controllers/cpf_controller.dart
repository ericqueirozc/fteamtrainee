import 'package:flutter/material.dart';
import 'package:varios_apps/app/cpf/models/cpf_model.dart';

class CpfController extends ChangeNotifier {
  CpfController._();
  static CpfController instance = CpfController._();

  //Variables
  TextEditingController cpfController = TextEditingController();
  var cpfModel = CPF();

  //Methods

  //Transform from string to list of ints
  converter() {
    print(cpfController.text);
    List<int> cpfString = cpfModel.fromStringToListOfInt(cpfController.text);
    print(cpfString);
  }
}

import 'package:flutter/cupertino.dart';
import 'package:varios_apps/app/imc/models/person_model.dart';

class ImcController extends ChangeNotifier {
  //gerenciamento
  double _peso = 0;
  double _altura = 0;
  String _result = '';

  set peso(double value) => _peso = value;
  set altura(double value) => _altura = value;

  String get result => _result;

  void calculateImc() {
    PersonModel person = PersonModel(peso: _peso, altura: _altura);
    _result = person.calculateImc().toStringAsFixed(2);
    notifyListeners();
  }
}

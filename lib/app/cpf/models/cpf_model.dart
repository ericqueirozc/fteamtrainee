import 'package:flutter/cupertino.dart';

class CPF {
  final String cpf;

  CPF(String this.cpf);

  List<int> _cpfInt = [];
  String _cpfClean = '';

  bool validateCpf() {
    if (inputIsValid()) {
      _cpfInt = _fromStringToListOfInt();
      int sum1 = multiplyEachByTenDecAndSum(_cpfInt);
      int digit1 = _getDigit(sum1);
      int sum2 = _multiplyEachByElevenDecAndSum(_cpfInt);
      int digit2 = _getDigit(sum2);
      return (digit1 == _cpfInt[9] && digit2 == _cpfInt[10]) ? true : false;
    } else {
      return false;
    }
  }

  List<int> _fromStringToListOfInt() {
    List<String> cpfString = _cpfClean.split("");
    cpfString.forEach((element) {
      _cpfInt.add(int.parse(element));
    });
    return _cpfInt;
  }

  @visibleForTesting
  int multiplyEachByTenDecAndSum(List<int> sequence) {
    int aux = 10;
    int sum = 0;
    for (var i = 0; i < 9; i++) {
      sum += sequence[i] * aux;
      aux -= 1;
    }
    return sum * 10;
  }

  int _getDigit(int sum) {
    int digit = sum % 11;
    return digit != 10 ? digit : 0;
  }

  int _multiplyEachByElevenDecAndSum(List<int> sequence) {
    int aux = 11;
    int sum = 0;
    for (var i = 0; i < 10; i++) {
      sum += sequence[i] * aux;
      aux -= 1;
    }
    return sum * 10;
  }

  bool inputIsValid() {
    clearInput();
    if (_cpfClean.length != 11) {
      return false;
    } else {
      try {
        int.parse(_cpfClean);
        return true;
      } catch (e) {
        print(e);
        return false;
      }
    }
  }

  void clearInput() {
    String aux = cpf.replaceAll(".", "");
    _cpfClean = aux.replaceAll("-", "");
  }
}

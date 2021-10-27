class CPF {
  String cpf;

  CPF(String this.cpf);

  List<int> cpfInt = [];

  bool validateCpf() {
    cpfInt = fromStringToListOfInt();
    int sum1 = multiplyEachByTenDecAndSum(cpfInt);
    int digit1 = getDigit(sum1);
    int sum2 = multiplyEachByElevenDecAndSum(cpfInt);
    int digit2 = getDigit(sum2);
    return (digit1 == cpfInt[9] && digit2 == cpfInt[10]) ? true : false;
  }

  List<int> fromStringToListOfInt() {
    List<String> cpfString = cpf.split("");
    cpfString.forEach((element) {
      cpfInt.add(int.parse(element));
    });
    return cpfInt;
  }

  int multiplyEachByTenDecAndSum(List<int> sequence) {
    int aux = 10;
    int sum = 0;
    for (var i = 0; i < 9; i++) {
      sum += sequence[i] * aux;
      aux -= 1;
    }
    return sum * 10;
  }

  int getDigit(int sum) {
    int digit = sum % 11;
    return digit != 10 ? digit : 0;
  }

  int multiplyEachByElevenDecAndSum(List<int> sequence) {
    int aux = 11;
    int sum = 0;
    for (var i = 0; i < 10; i++) {
      sum += sequence[i] * aux;
      aux -= 1;
    }
    return sum * 10;
  }

  bool inputIsValid() {
    if (cpf.length != 11) {
      return false;
    } else {
      try {
        int.parse(cpf);
        return true;
      } catch (e) {
        return false;
      }
    }
  }
}

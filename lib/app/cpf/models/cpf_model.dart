class CPF {
  List<int> fromStringToListOfInt(String cpf) {
    List<String> cpfString = cpf.split("");
    List<int> cpfInt = [];
    cpfString.forEach((element) {
      cpfInt.add(int.parse(element));
    });
    return cpfInt;
  }

  int multiplyEachByTenDecAndSum(List<int> sequence) {
    int aux = 10;
    int sum = 0;
    for (var i = 0; i < 9; i++) {
//      print("${sequence[i]} vezes $aux é igual a ${sequence[i] * aux}");
      sum += sequence[i] * aux;
      aux -= 1;
    }
    return sum * 10;
  }

  int getDigit(int sum) {
    int digit = sum % 11;
    print(digit);
    return digit != 10 ? digit : 0;
  }

  int multiplyEachByElevenDecAndSum(List<int> sequence) {
    int aux = 11;
    int sum = 0;
    for (var i = 0; i < 10; i++) {
      print("${sequence[i]} vezes $aux é igual a ${sequence[i] * aux}");
      sum += sequence[i] * aux;
      aux -= 1;
    }
    return sum * 10;
  }
}

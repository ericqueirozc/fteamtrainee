class CPF {
//  List<int> _digits = [];

  //getters
//  List<int> get numbers => numbers;
//  List<int> get digits => _digits;

  //Setters
//  set numbers(List<int> numbers) => _numbers = numbers;
//  set digits(List<int> digits) => _digits = digits;

  //Methods

//  List<int> fullCpf(List<int> numbers, List<int> digits) {
//    return numbers + digits;
//  }

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
    return digit != 0 ? digit : 0;
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

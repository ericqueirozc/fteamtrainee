class CPF {
  List<int> numbers = [];
//  List<int> _digits = [];

  CPF();
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
    cpfString.map((element) {
      cpfInt.add(int.parse(element));
    });
    return cpfInt;
  }

  int multiplyEachByTenDecAndSum(List<int> sequence) {
    int aux = 10;
    int sum = 0;
    for (var i = 8; i > 0; i--) {
      sum += sequence[i] * aux;
      aux -= 1;
    }
    return sum;
  }

  int getFirstDigit(int sum) {
    int digit = sum % 11;
    return digit != 0 ? digit : 0;
  }

  int multiplyEachByElevenDecAndSum(List<int> sequence) {
    int aux = 11;
    int sum = 0;
    for (var i = 9; i > 0; i--) {
      sum += sequence[i] * aux;
      aux -= 1;
    }
    return sum;
  }
}

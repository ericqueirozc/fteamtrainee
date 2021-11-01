class PersonModel {
  final double peso;
  final double altura;

  PersonModel({required this.peso, required this.altura});

  double calculateImc() {
    if (isValid()) {
      return peso / (altura * altura);
    } else {
      return 0.0;
    }
  }

  bool isValid() {
    if (peso > 0 && altura > 0) {
      return true;
    } else {
      return false;
    }
  }
}

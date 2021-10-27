class PersonModel {
  final double peso;
  final double altura;

  PersonModel({required this.peso, required this.altura});

  double calculateImc() {
    return peso / (altura * altura);
  }
}

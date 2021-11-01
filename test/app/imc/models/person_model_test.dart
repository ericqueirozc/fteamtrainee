import 'package:flutter_test/flutter_test.dart';
import 'package:varios_apps/app/imc/models/person_model.dart';

void main() {
  test("calculateImc() deve retornar 22.64", () {
    PersonModel person = PersonModel(peso: 75, altura: 1.82);
    expect(person.calculateImc().toStringAsFixed(2), '22.64');
  });

  test("isValid() deve retornar false pois o peso foi menor do que zero", () {
    PersonModel person = PersonModel(peso: -50, altura: 1.82);
    expect(person.isValid(), false);
  });

  test("isValid() deve retornar false pois a altura foi menor do que zero", () {
    PersonModel person = PersonModel(peso: 50, altura: -1.82);
    expect(person.isValid(), false);
  });

  test("calculateImc()) deve retornar 0.0 pois o peso foi menor do que zero",
      () {
    PersonModel person = PersonModel(peso: -50, altura: 1.82);
    expect(person.calculateImc(), 0.0);
  });

  test("calculateImc()) deve retornar 0.0 pois a altura foi menor do que zero",
      () {
    PersonModel person = PersonModel(peso: 40, altura: -1.32);
    expect(person.calculateImc(), 0.0);
  });
}

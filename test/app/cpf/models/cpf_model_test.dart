import 'package:flutter_test/flutter_test.dart';
import 'package:varios_apps/app/cpf/models/cpf_model.dart';

void main() {
  test("validateCpf() deve retornar true pois o cpf é valido", () {
    CPF cpfModel = CPF("55247970004");
    expect(true, cpfModel.validateCpf());
  });

  test("validateCpf() deve retornar false pois o cpf é invalido", () {
    CPF cpfModel = CPF("12312312332");
    expect(false, cpfModel.validateCpf());
  });

  test("validateCpf() deve retornar false pois o cpf está incompleto", () {
    CPF cpfModel = CPF("1231231");
    expect(false, cpfModel.validateCpf());
  });

  test(
      "validateCpf() deve retornar false pois o cpf está maior do que o esperado",
      () {
    CPF cpfModel = CPF("1231231123124124123");
    expect(false, cpfModel.validateCpf());
  });

  test("validateCpf() deve retornar false pois o cpf contem letras", () {
    CPF cpfModel = CPF("1231hdj123u");
    expect(false, cpfModel.validateCpf());
  });

  test("validateCpf() deve retornar false pois o cpf está vazio", () {
    CPF cpfModel = CPF("");
    expect(false, cpfModel.validateCpf());
  });

/*
  test("fromStringToListOfInt() deve retornar uma lista de ints", () {
    CPF cpfModel = CPF("12312312332");
    expect([1, 2, 3, 1, 2, 3, 1, 2, 3, 3, 2], cpfModel._fromStringToListOfInt());
  });

  */
}

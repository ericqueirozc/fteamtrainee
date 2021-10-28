import 'package:flutter_test/flutter_test.dart';
import 'package:varios_apps/app/conversor_de_moeda/models/price_model.dart';

void main() {
  test(
      "converter() deve retornar 0.18 pois estou convertendo 1 real para dolares",
      () {
    expect(
        PriceModel()
            .converter(1, PriceModel().priceReal, PriceModel().priceDollar),
        0.18);
  });

  test(
      "converter() deve retornar 0.16 pois estou convertendo 1 real para euros",
      () {
    expect(
        PriceModel()
            .converter(1, PriceModel().priceReal, PriceModel().priceEuro),
        0.16);
  });

  test(
      "converter() deve retornar 5.56 pois estou convertendo 1 dolar para reais",
      () {
    expect(
        PriceModel()
            .converter(1, PriceModel().priceDollar, PriceModel().priceReal),
        5.56);
  });

  test(
      "converter() deve retornar 1.16 pois estou convertendo 1 dolar para euros",
      () {
    expect(
        PriceModel()
            .converter(1, PriceModel().priceEuro, PriceModel().priceDollar),
        1.16);
  });

  test(
      "converter() deve retornar 0.86 pois estou convertendo 1 euro para dolares",
      () {
    expect(
        PriceModel()
            .converter(1, PriceModel().priceDollar, PriceModel().priceEuro),
        0.86);
  });

  test(
      "converter() deve retornar 6.58 pois estou convertendo 1 euro para reais",
      () {
    expect(
        PriceModel()
            .converter(1, PriceModel().priceEuro, PriceModel().priceReal),
        6.44);
  });

  test(
      "converter() deve retornar 0.76 pois estou convertendo 4.20 reais para dolares",
      () {
    expect(
        PriceModel()
            .converter(4.20, PriceModel().priceReal, PriceModel().priceDollar),
        0.76);
  });

  test(
      "converter() deve retornar 1.36 pois estou convertendo 8.75 reais para euros",
      () {
    expect(
        PriceModel()
            .converter(8.75, PriceModel().priceReal, PriceModel().priceEuro),
        1.36);
  });

  test(
      "converter() deve retornar 16.67 pois estou convertendo 3 dolar para reais",
      () {
    expect(
        PriceModel()
            .converter(3, PriceModel().priceDollar, PriceModel().priceReal),
        16.67);
  });

  test(
      "converter() deve retornar 11.02 pois estou convertendo 9.50 dolares para euros",
      () {
    expect(
        PriceModel()
            .converter(9.50, PriceModel().priceEuro, PriceModel().priceDollar),
        11.02);
  });

  test(
      "converter() deve retornar 517.24 pois estou convertendo 600 euro para dolares",
      () {
    expect(
        PriceModel()
            .converter(600, PriceModel().priceDollar, PriceModel().priceEuro),
        517.24);
  });

  test(
      "converter() deve retornar 83.78 pois estou convertendo 13 euro para reais",
      () {
    expect(
        PriceModel()
            .converter(13, PriceModel().priceEuro, PriceModel().priceReal),
        83.78);
  });

  test(
      "converter() deve retornar 0.17 pois estou convertendo 0.15 dolares para euros",
      () {
    expect(
        PriceModel()
            .converter(0.15, PriceModel().priceEuro, PriceModel().priceDollar),
        0.17);
  });

  test(
      "converter() deve retornar -83.78 pois estou convertendo -13 euro para reais",
      () {
    expect(
        PriceModel()
            .converter(-13, PriceModel().priceEuro, PriceModel().priceReal),
        -83.78);
  });
}

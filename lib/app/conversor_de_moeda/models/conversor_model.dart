class PriceModel {
  final double priceDollar = 1;
  final double priceReal = 0.18;
  final double priceEuro = 1.16;

  double converter(double value, double priceValue, double priceConverter) {
    double x = (priceConverter / priceValue) / value;
    return x;
  }
}

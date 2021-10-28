class PriceModel {
  final double _priceDollar = 1;
  final double _priceReal = 0.18;
  final double _priceEuro = 1.16;

  double get priceDollar => _priceDollar;
  double get priceReal => _priceReal;
  double get priceEuro => _priceEuro;

  double converter(double value, double priceValue, double priceConverter) {
    return double.parse(
        (value / (priceConverter / priceValue)).toStringAsFixed(2));
  }
}

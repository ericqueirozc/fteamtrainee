class ConversorModel {
  double _dollar = 1;
  double _real = 0.18;
  double _euro = 1.16;

  //Getters and Setters

  double get dollar => _dollar;
  double get real => _real;
  double get euro => _euro;

  //cotOne being the base coin cotation and cotTwo being the target coin
  double converter(double input, double cotOne, double cotTwo) {
    double value = (cotOne * input) / cotTwo;
    return value;
  }
}

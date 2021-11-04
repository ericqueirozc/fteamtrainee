import 'package:flutter/services.dart';

class CpfTextFormatter extends TextInputFormatter {
  StringBuffer buffer = StringBuffer();
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String cleanInput = newValue.text.replaceFirst(RegExp('.'), '');
    int cleanInputSize = cleanInput.length;
    if (cleanInputSize > 2 && cleanInputSize < 6) {
      return TextEditingValue(
          text: newValue.text.substring(0, 3) +
              "." +
              newValue.text.substring(3, newValue.text.length),
          selection: TextSelection.collapsed(offset: newValue.text.length + 1));
    }
    if (cleanInputSize > 5 && cleanInputSize < 9) {
      return TextEditingValue(
          text: newValue.text.substring(0, 3) +
              "." +
              newValue.text.substring(3, 6) +
              "." +
              (newValue.text.substring(6, newValue.text.length)),
          selection: TextSelection.collapsed(offset: newValue.text.length + 2));
    }
    if (cleanInputSize > 8 && cleanInputSize < 11) {
      return TextEditingValue(
          text: newValue.text.substring(0, 3) +
              "." +
              newValue.text.substring(3, 6) +
              "." +
              newValue.text.substring(6, 9) +
              "-" +
              newValue.text.substring(9, newValue.text.length),
          selection: TextSelection.collapsed(offset: newValue.text.length + 3));
    }

    return newValue;
  }
}

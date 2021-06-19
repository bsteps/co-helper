import 'package:formz/formz.dart';

class Pincode extends FormzInput<String, String> {
  const Pincode.pure([String value = '']) : super.pure(value);
  const Pincode.dirty([String value = '']) : super.dirty(value);

  @override
  String? validator(String? value) {
    if (value == null || value == "") {
      return "pincode is required.";
    }

    if (value.length != 6) {
      return "pincode is invalid must be 6 digits.";
    }

    return null;
  }
}

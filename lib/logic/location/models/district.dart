import 'package:co_helper/data/models/CowinDistrict.dart';
import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';

@immutable
class District extends FormzInput<CowinDistrict?, String> {
  const District.pure([CowinDistrict? value]) : super.pure(value);
  const District.dirty([CowinDistrict? value]) : super.dirty(value);

  @override
  String? validator(CowinDistrict? value) {
    if (value == null) {
      return "district is required.";
    }

    return null;
  }
}

import 'package:co_helper/data/models/CowinState.dart';
import 'package:flutter/cupertino.dart';
import 'package:formz/formz.dart';

@immutable
class State extends FormzInput<CowinState?, String> {
  const State.pure([CowinState? value]) : super.pure(value);
  const State.dirty([CowinState? value]) : super.dirty(value);

  @override
  String? validator(CowinState? value) {
    if (value == null) {
      return "state is required.";
    }

    return null;
  }
}
import 'package:flutter/material.dart';

class ErrorDialog {
  static ErrorDialog _instance = ErrorDialog.internal();
  ErrorDialog.internal();
  factory ErrorDialog() => _instance;

  static Future<void> showLoadingDialog(BuildContext context, String message) async {
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Error"),
          content: Text(message),
          actions: [
            MaterialButton(
              child: Text("Ok"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
}

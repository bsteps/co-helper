import 'package:flutter/material.dart';

class ProcessDialog {
  static ProcessDialog _instance = ProcessDialog.internal();
  static bool isLoading = false;
  ProcessDialog.internal();
  factory ProcessDialog() => _instance;
  static late BuildContext _context;

  static void closeLoadingDialog() {
    if (isLoading) {
      Navigator.of(_context, rootNavigator: true).pop();
    }
    isLoading = false;
  }

  static Future<void> showLoadingDialog(BuildContext context) async {
    if(isLoading) return;
    isLoading = true;
    _context = context;
    await showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return SimpleDialog(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          children: <Widget>[
            Center(
              child: CircularProgressIndicator(),
            )
          ],
        );
      },
    );
  }
}

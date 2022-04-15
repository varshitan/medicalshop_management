import 'package:flutter/material.dart';

enum DialogsAction { yes, cancel }

class AlertDialogs {
  static Future<DialogsAction> yesCancelDialog(
    BuildContext context,
    String title,
    String body,
  ) async {
    final action = await showDialog(
        //barrierDismissible: false,
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(title),
            content: Text(body),
            actions: <Widget>[
              FloatingActionButton.extended(
                  onPressed: () =>
                      Navigator.of(context).pop(DialogsAction.cancel),
                  label: Text("yes")),
              FloatingActionButton.extended(
                  onPressed: () => Navigator.of(context).pop(DialogsAction.yes),
                  label: Text("no"))
            ],
          );
        });
  }
}

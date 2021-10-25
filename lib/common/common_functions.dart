
import 'package:flutter/material.dart';

valueRequiredDialog(colocacao, {required BuildContext context } ){
  return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('ERRO'),
          content: Text('É preciso informar o $colocacao valor para operação de soma'),
          actions: [
            TextButton(
                child: Text('OK'),
                onPressed: () => Navigator.of(context).pop()
            ),
          ],
        );
      }
  );
}
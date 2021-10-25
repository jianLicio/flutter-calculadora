import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:soma_de_dois_numeros/initialization/start_cupertino_application.dart';
import 'package:soma_de_dois_numeros/initialization/start_mateiral_application.dart';
import 'dart:io' show Platform;

main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(statusBarColor: Colors.transparent),
  );
  if (Platform.isAndroid) {
    runApp(const StartMaterialApplication());
  } else if (Platform.isIOS) {
    runApp(const StartCupertinoApplication());
  }
}

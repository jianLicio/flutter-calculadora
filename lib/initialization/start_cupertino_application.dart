
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:soma_de_dois_numeros/presentation/pages/cupertino_home_page.dart';

class StartCupertinoApplication extends StatelessWidget {
  const StartCupertinoApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
        title: 'Soma de 2 valores',
      theme: CupertinoThemeData(primaryColor: Colors.blue),
      home: CupertinoHomePage(),
    );
  }
}

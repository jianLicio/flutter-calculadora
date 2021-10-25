import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoHomePage extends StatelessWidget {
  const CupertinoHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Cupertino Homepage'),
      ),
      child: Center(
        child: Text('Body Page'),
      ),
    );
  }
}

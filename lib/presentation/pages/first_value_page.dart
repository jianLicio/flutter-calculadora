import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:page_transition/page_transition.dart';
import 'package:soma_de_dois_numeros/common/common_functions.dart';
import 'package:soma_de_dois_numeros/presentation/pages/second_value_page.dart';

class FirstValuePage extends StatelessWidget {
  String _firstValue = '';
  static const routeName = '/first';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeiro valor'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/calculator.png'),
          )
        ],
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Card(
            elevation: 3,
            child: TextField(
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              decoration: const InputDecoration(
                prefixIcon: Icon(
                  Icons.keyboard,
                  color: Colors.black,
                ),
                hintText: 'Informe o primeiro valor',
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.red, width: 2),
                ),
              ),
              onChanged: (value) => _firstValue = value,
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_firstValue.isEmpty) {
            // ignore: void_checks
            return valueRequiredDialog('primeiro', context: context);
          }
          Navigator.of(context).pushNamed(SecondValuePage.routeName, arguments: _firstValue);
          // Navigator.push(
          //   context,
          //   PageTransition(
          //     duration: const Duration(seconds: 3),
          //     type: PageTransitionType.fade,
          //     child: SecondValuePage(
          //       firstValue: _firstValue,
          //     ),
          //   ),
          // );

          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => SecondValuePage(
          //       firstValue: _firstValue,
          //     ),
          //   ),
          // );
        },
        child: const Icon(
          Icons.arrow_forward_ios,
          color: Colors.black,
        ),
      ),
    );
  }
}

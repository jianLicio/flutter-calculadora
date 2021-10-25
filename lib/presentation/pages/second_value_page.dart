import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soma_de_dois_numeros/common/common_functions.dart';
import 'package:soma_de_dois_numeros/presentation/pages/sum_result_page.dart';

// ignore: must_be_immutable
class SecondValuePage extends StatelessWidget {
  static const routeName = '/second';

  final String firstValue;
  String _secondValue = '';

  SecondValuePage({Key? key, required this.firstValue}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('segundo valor'),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              // ignore: prefer_const_constructors
              padding: EdgeInsets.only(top: 16.0),
              child: Text(
                'Você informou $firstValue como primeiro valor',
                style: GoogleFonts.aBeeZee(),
              ),
            ),
          ),
          Align(
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
                  hintText: 'Informe o segundo valor',
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red, width: 2),
                  ),
                ),
                onChanged: (value) => _secondValue = value,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          if (_secondValue.isEmpty) {
            // ignore: void_checks
            return valueRequiredDialog('segundo', context: context);
          }

          Navigator.of(context).pushNamed(SumResultPage.routeName,
              arguments: [firstValue, _secondValue]);
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => SumResultPage(
          //       firstValue: firstValue,
          //       secondValue: _secondValue,
          //     ),
          //   ),
          // );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              'assets/images/calculator.png',
              height: 60,
              width: 60,
            ),
            const SizedBox(height: 5),
            const Text(
              'Somar',
              style: TextStyle(fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}

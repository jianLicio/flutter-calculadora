import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soma_de_dois_numeros/presentation/pages/first_value_page.dart';
import 'package:soma_de_dois_numeros/presentation/pages/material_home_page.dart';

class SumResultPage extends StatelessWidget {
  static const routeName = '/result';

  final String firstValue, secondValue;

  const SumResultPage(
      {Key? key, required this.firstValue, required this.secondValue})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Apresentação da operação',
              style: GoogleFonts.aBeeZee(color: Colors.blue[900]),
            ),
            Text(
              '$firstValue + $secondValue = '
              '${int.parse(firstValue) + int.parse(secondValue)}',
              style: GoogleFonts.aBeeZee(color: Colors.blue[900]),
            ),
            Image.asset(
              'assets/images/calculator.png',
              height: 120,
              width: 120,
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
            FirstValuePage.routeName, (route) => false),
        // Navigator.of(context).pushAndRemoveUntil(
        // MaterialPageRoute(builder: (context) => FirstValuePage()),
        // (route) => false),
        child: const Icon(Icons.refresh),
      ),
    );
  }
}

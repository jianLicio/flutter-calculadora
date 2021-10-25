import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:soma_de_dois_numeros/presentation/pages/first_value_page.dart';

class MaterialHomePage extends StatelessWidget {
  static const routeName = '/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 16.0),
                child: Text(
                  'App de soma de dois valores',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.rockSalt(
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Image.asset("assets/images/calculator.png"),
                )),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Text(
            'Comece por aqui',
            style: GoogleFonts.aBeeZee(
                fontWeight: FontWeight.bold, color: Colors.blue[800]),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () =>
              Navigator.of(context).pushNamed(FirstValuePage.routeName),
              // Navigator.of(context).push(
              //   PageRouteBuilder(
              //     pageBuilder: (context, animation, secondaryAnimation) =>
              //         FirstValuePage(),
              //     transitionsBuilder:
              //         (context, animation, secondaryAnimation, child) {
              //       return SlideTransition(
              //         position: Tween<Offset>(
              //           begin: Offset(1, 1),
              //           end: Offset(0, 0),
              //         ).animate(animation),
              //         child: child,
              //       );
              //     },
              //     transitionDuration: Duration(milliseconds: 900),
              //   ),
              // );

            // onPressed: () => Navigator.push(
            //   context,
            //   MaterialPageRoute(builder: (context) => FirstValuePage()),
            // ),
            child: const Icon(Icons.arrow_forward_ios),
          ),
        ],
      ),
    );
  }
}

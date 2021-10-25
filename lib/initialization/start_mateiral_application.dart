import 'package:flutter/material.dart';
import 'package:soma_de_dois_numeros/core/app_router.dart';
import 'package:soma_de_dois_numeros/presentation/pages/first_value_page.dart';
import 'package:soma_de_dois_numeros/presentation/pages/material_home_page.dart';
import 'package:soma_de_dois_numeros/presentation/pages/second_value_page.dart';
import 'package:soma_de_dois_numeros/presentation/pages/sum_result_page.dart';

class StartMaterialApplication extends StatelessWidget {
  const StartMaterialApplication({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Soma de 2 valores',
        theme: ThemeData(primaryColor: Colors.purple),
        home: MaterialHomePage(),
      onGenerateRoute: AppRouter.generateRoute,
      // routes: {
      //     MaterialHomePage.routeName: (context) => MaterialHomePage(),
      // },
      // initialRoute: MaterialHomePage.routeName,
    );
  }
}

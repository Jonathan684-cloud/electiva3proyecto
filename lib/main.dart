import 'package:proyectoelectivaa/router/app_routes.dart';
import 'package:flutter/material.dart';

import 'theme/appTheme.dart';


void main() {
  runApp(const BurgerDelivery());
}

class BurgerDelivery extends StatelessWidget {
  const BurgerDelivery({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Burger',
      initialRoute: AppRouteSesion.initialRoute,
      routes: AppRouteSesion.getAppRoutes(),
      theme: AppTheme.darkTheme,
    );
  }
}
 
import 'dart:ui';

import 'package:flutter/material.dart';

import '../elements/elementos.dart';
import '../router/app_routes.dart';
import '../theme/appTheme.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOpciones = AppRouteSesion.menuOptions;
    return Scaffold(
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * (15 / 100),
              decoration: const BoxDecoration(color: AppTheme.fourth),
              child: const Center(
                  child: Text('Iniciar Sesion', style: TextStyle(
                                    color: Colors.white, fontSize: 40), ) )),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Container(
                  width: double.maxFinite,
                  height: MediaQuery.of(context).size.height * (75 / 100),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Campos('Correo Electronico', 'correo@gmail.com', true),
                      const SizedBox(
                        height: 40,
                      ),
                      Campos('Contraseña', '******', true),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              child: const Text(
                                'Olvidaste tu contraseña',
                                style: TextStyle(color: Colors.orange),
                              ),
                              onPressed: () {}),
                          TextButton(
                              child: const Text('Registrate',
                                  style: TextStyle(color: Colors.orange)),
                              onPressed: () {
                                Navigator.pushNamed(
                          context, menuOpciones[4].route);
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 40,
                      ), 
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 250,
                          height: 60,
                          decoration: const BoxDecoration(
                            color: Colors.orange
                          ),
                          child: TextButton(
                            onPressed: () { 
                              Navigator.pushNamed(
                                context, menuOpciones[12].route);
                             },
                            child: const Text('Iniciar Sesion', style: TextStyle(color: AppTheme.sevenly, fontSize: 30),),
                          )
                        ),
                      )
                    ],
                  )),
            ),
          )
        ]),
      ),
    );
  }
}

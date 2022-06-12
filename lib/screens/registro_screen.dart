import 'package:flutter/material.dart';

import '../elements/elementos.dart';
import '../elements/funciones.dart';
import '../theme/appTheme.dart';

class RegistroScreen extends StatefulWidget {
  const RegistroScreen({Key? key}) : super(key: key);

  @override
  State<RegistroScreen> createState() => _RegistroScreenState();
}

class _RegistroScreenState extends State<RegistroScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * (10 / 100),
              decoration: const BoxDecoration(color: AppTheme.fourth),
              child: const Center(
                  child: Text('Registrate', style: TextStyle(
                                    color: Colors.white, fontSize: 40), ) ),
              ),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Container(
                  width: double.maxFinite,

                  //height: MediaQuery.of(context).size.height * (75 / 100),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 5,
                      ),
                      Campos('Nombres', 'Ingresa tus nombres', true),
                      const SizedBox(
                        height: 5,
                      ),
                      Campos('Apellidos', 'Ingresa tus apellidos', true),
                      const SizedBox(
                        height: 5,
                      ),
                      Campos('Correo Electronico', 'correo@gmail.com', true),
                      const SizedBox(
                        height: 5,
                      ),
                      Campos('Telefono', '7777-7777', true),
                      const SizedBox(
                        height: 5,
                      ),
                      Campos('Contraseña', '******', true),
                      const SizedBox(
                        height: 20,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          width: 300,
                          height: 50,
                          decoration: BoxDecoration(color: Colors.orange),
                          child: TextButton(
                              child: const Text('Registrarme',
                                  style: const TextStyle(color: Colors.white)),
                              onPressed: () => alertaConfirm(context)),
                        ),
                      ),
                    ],
                  )),
            ),
          )
        ]),
      ),
    );
  }
}

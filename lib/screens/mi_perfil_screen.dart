import 'dart:ui';

import 'package:flutter/material.dart';

import '../router/app_routes.dart';
import '../elements/elementos.dart';
import '../theme/appTheme.dart';

class MiPerfilScreen extends StatefulWidget { 
    const MiPerfilScreen({Key? key}) : super(key: key);

  @override
  State<MiPerfilScreen> createState() => _MiPerfilScreenState();
}

class _MiPerfilScreenState extends State<MiPerfilScreen> {

    late bool modificar=false;
  void cambiarestado(){
    setState(() {
      if(modificar=false){
        modificar=true;
      }else if(modificar=true){
        modificar=false;
      }
    });
  }      
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("       INFORMACION PERSONAL" ),
        
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * (4 / 100),
              decoration: const BoxDecoration(color: AppTheme.fourth),
              child: const Center(
                  child: Text(
                'Mi Perfil',
                style: TextStyle(fontSize: 22, color: AppTheme.sixted),
              ))),
          Container(
            child: Padding(
              padding: const EdgeInsets.only(right: 25, left: 25),
              child: Container(
                  width: double.maxFinite,

                  //height: MediaQuery.of(context).size.height * (75 / 100),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Campos('Nombre Completo', 'Jonathan Benito', modificar), 
                       
                      Campos('Correo Electronico', 'correo@gmail.com', modificar),
                      
                      Campos('Direccion', 'Mejicanos, av Bernal casa 8b', modificar),
                       
                      Campos('Numero de telefono', '7777-7777', modificar),
                       
                      Campos('Contraseña', '******', modificar),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(color: AppTheme.eigth),
                              child: TextButton(
                                  child: const Text(
                                    'Atras',
                                    style: TextStyle(
                                        fontSize: 20, color: AppTheme.sevenly),
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  }),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8),
                            child: Container(
                              height: 40,
                              decoration: BoxDecoration(color: AppTheme.fourth),
                              child: TextButton(
                                  child: const Text(
                                    'Modificar',
                                    style: TextStyle(
                                        fontSize: 20, color: AppTheme.sevenly),
                                  ),
                                  onPressed: ()  => cambiarestado()
                                  ),
                            ),
                          ),
                        ],
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

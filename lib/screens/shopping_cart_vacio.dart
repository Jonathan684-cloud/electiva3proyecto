
import 'package:flutter/material.dart';

import '../router/app_routes.dart';
import '../theme/appTheme.dart';

class ShoopingCartVacio extends StatefulWidget {
  const ShoopingCartVacio({Key? key}) : super(key: key);

  @override
  State<ShoopingCartVacio> createState() => _ShoopingCartVacioState();
}

class _ShoopingCartVacioState extends State<ShoopingCartVacio> {
  final producto = [
     
  ];
  final precio = [
     
  ];
  @override
  Widget build(BuildContext context) {
    
    final menuOpciones = AppRouteSesion.menuOptions;
    return Scaffold(
      appBar: AppBar(title: const Text('',),),
      body:Column(
        children: [ 
          Container(
            decoration:const  BoxDecoration(color:Color.fromARGB(255, 114, 70, 3)),
            height: 40,
            child: const  Center(child: Text('Tu lista de pedido', style: TextStyle( fontSize: 25, color: Colors.orange))),
          ),
          
          SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                    children: List.generate(producto.length, (index) {
                      return Container(
                        decoration:const BoxDecoration(
                            color: Color.fromARGB(255, 224, 176, 104)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 15, top: 15, bottom: 10, right: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              //crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                 
                                const Icon(Icons.lunch_dining_sharp,
                                    color: AppTheme.sevenly),
                                  
                                Text(
                                  producto[index],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ), 
                                Text(
                                  precio[index],
                                  style: const TextStyle(
                                      color: Colors.white, fontSize: 20),
                                ),
                              ]),
                        ),
                      );
                    }),
                  )),
                  SizedBox(height: 200,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                   ElevatedButton(
                      onPressed: () { 
                        Navigator.pushNamed(
                                          context, menuOpciones[12].route);
                       },
                      child: const Text('Volver'),
                    ),
                     
                    ],
                  )
                  
                  ],
      ),
    );
  }
}
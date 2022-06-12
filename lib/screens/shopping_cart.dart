
import 'package:flutter/material.dart';

import '../elements/funciones.dart';
import '../router/app_routes.dart';
import '../theme/appTheme.dart';

class ShoopingCart extends StatefulWidget {
  const ShoopingCart({Key? key}) : super(key: key);

  @override
  State<ShoopingCart> createState() => _ShoopingCartState();
}

class _ShoopingCartState extends State<ShoopingCart> {
  final producto = [
    'Tocino y Queso',
    'Duo cheese burger',
    'Doble KO!' 
  ];
  final precio = [
    'USD 3.75',
    'USD 5.40', 
    'USD 5.85'
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
                  SizedBox(height: 100,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                   ElevatedButton(
                      onPressed: () { 
                        Navigator.pushNamed(
                                          context, menuOpciones[13].route);
                       },
                      child: const Text('Eliminar pedido'),
                    ),
                    ElevatedButton(
                      onPressed: () =>alertaConfirmacionPedido(context),
                      child: const Text('Comprobar pedido'),
                    ),
                    ],
                  )
                  
                  ],
      ),
    );
  }
}
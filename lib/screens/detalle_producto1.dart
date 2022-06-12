import 'package:flutter/material.dart';

import '../theme/appTheme.dart';

class DetalleProducto extends StatefulWidget {
  const DetalleProducto({Key? key}) : super(key: key);

  @override
  State<DetalleProducto> createState() => _DetalleProductoState();
}

class _DetalleProductoState extends State<DetalleProducto> {
  final ingredientes = [
    'Lechuga',
    'Papas',
    'Cocacola',
    'Salsa ketchup',
    'Pepinillos',
    'Carne x2',
    'Tomate',
    'Queso',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalle de pedido'),
      ),
      body: Column(
        children: [
          Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * (4 / 100),
              decoration: const BoxDecoration(color: AppTheme.fourth),
              child: const Center(
                  child: Text(
                'Hamburguesa con queso',
                style: TextStyle(fontSize: 25, color: AppTheme.sixted),
              ))),
          Container(
            width: double.maxFinite,
            height: 225,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                    'https://img-global.cpcdn.com/recipes/a90603f413c15f8d/680x482cq70/combo-de-hamburguesa-clasica-foto-principal.jpg',
                  ),
                  fit: BoxFit.cover,
                  scale: 1),
            ),
          ),
          Container(
              width: double.maxFinite,
              height: MediaQuery.of(context).size.height * (4 / 100),
              decoration: const BoxDecoration(color: AppTheme.fourth),
              child: const Center(
                  child: Text(
                'Ingredients & Topics',
                style: TextStyle(fontSize: 25, color: AppTheme.sixted),
              ))),
          SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(ingredientes.length, (index) {
                  return Container(
                    decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 224, 176, 104)),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 20, top: 6, bottom: 5),
                      child: Row(mainAxisAlignment: MainAxisAlignment.start,
                          //crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Icon(Icons.check_circle_outline,
                                color: AppTheme.sevenly),
                            const SizedBox(width: 5),
                            Text(
                              ingredientes[index],
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                            ),
                          ]),
                    ),
                  );
                }),
              )),
          SizedBox(
            height: 25,
          ),
          Row(
             
          ),
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              height: 40,
              decoration: BoxDecoration(color: AppTheme.fourth),
              child: TextButton(
                  child: const Text(
                    'Atras',
                    style: TextStyle(fontSize: 20, color: AppTheme.sevenly),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  }),
            ),
          ),
        ],
      ),
    );
  }
}

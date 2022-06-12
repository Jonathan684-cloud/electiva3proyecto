import 'package:flutter/material.dart';

import '../theme/appTheme.dart';

class HistorialPedidosScreen extends StatefulWidget {
  @override
  State<HistorialPedidosScreen> createState() => _HistorialPedidosScreenState();
}

class _HistorialPedidosScreenState extends State<HistorialPedidosScreen> {
  final historial = [
    'Tocino y Queso',
    'Duo cheese burger',
    'Doble KO!'
  ];
  final precioh = [
    'USD 5.50',
    'USD 5.50',
    'USD 5.50'
  ];
  int colorIterado = 0;
  //const HistorialPedidosScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(''),
        ), 
        body: Column(
          children: [
            Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * (4 / 100),
                decoration: const BoxDecoration(color: AppTheme.fourth),
                child: const Center(
                    child: Text(
                  'Tus ultimos pedidos realizados',
                  style: TextStyle(fontSize: 25, color: AppTheme.sixted),
                ))),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: List.generate(historial.length, (index) {
                    return Container(
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 224, 176, 104)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 12,right: 12,top: 15, bottom: 10),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            //crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(Icons.check_circle_outline,
                                  color: AppTheme.sevenly),
                              SizedBox(width: 5),
                              Text(
                                historial[index],
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              Text(
                                precioh[index],
                                style: const TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                            ]),
                      ),
                    );
                  }),
                )),
            SizedBox(
              height: 200,
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
        ));
  }
}

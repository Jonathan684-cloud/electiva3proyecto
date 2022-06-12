import 'package:flutter/material.dart';

import '../theme/appTheme.dart';

class PedidoActualScreen extends StatelessWidget {
  const PedidoActualScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DateTime now = DateTime.now(); 
    int hora=now.hour;
    int minutos= now.minute ;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Pedido Actual'),
        ),
        body: Column(
          children: [
            Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * (4 / 100),
                decoration: const BoxDecoration(color: AppTheme.fourth),
                child: const Center(
                    child: Text(
                  'Mi pedido',
                  style: TextStyle(fontSize: 22, color: AppTheme.sixted),
                ))),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(color: AppTheme.fourth),
                      child: const Icon(
                        Icons.playlist_add_check_sharp,
                        size: 65,
                        color: AppTheme.sevenly,
                      )),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      width: 220,
                      height: 80,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 155, 107, 37)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            Center(
                              child: Text('${hora} : ${minutos}'
                                ,
                                style: TextStyle(
                                    color: AppTheme.sevenly, fontSize: 22),
                              ),
                            ), 
                          ])),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(color: AppTheme.fourth),
                      child: const Icon(
                        Icons.location_on,
                        size: 65,
                        color: AppTheme.sevenly,
                      )),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      width: 220,
                      height: 80,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 155, 107, 37)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Center(
                              child: Text(
                                '--:--',
                                style: TextStyle(
                                    color: AppTheme.sevenly, fontSize: 40),
                              ),
                            ),
                          ])),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      width: 80,
                      height: 80,
                      decoration: const BoxDecoration(color: AppTheme.fourth),
                      child: const Icon(
                        Icons.food_bank,
                        size: 65,
                        color: AppTheme.sevenly,
                      )),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Container(
                      width: 220,
                      height: 80,
                      decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 155, 107, 37)),
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Center(
                              child: Text(
                                 'No entregado',
                                style: TextStyle(
                                    color: AppTheme.sevenly, fontSize: 22),
                              ),
                            ),
                          ])),
                ),
              ],
            ),
          ],
        ));
  }
}

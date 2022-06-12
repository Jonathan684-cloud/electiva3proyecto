import 'package:proyectoelectivaa/elements/elementos.dart';
import 'package:flutter/material.dart'; 

import '../router/app_routes.dart';
import '../theme/appTheme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

    final int alturaTarjeta=90;
  @override
  Widget build(BuildContext context) { 
    final menuOpciones = AppRouteSesion.menuOptions;

    return Scaffold(
      appBar: AppBar(
        title:const Text("         KRUSTY BURGER APP" , textAlign:TextAlign.center),
        actions: [
          IconButton(onPressed: () {
            Navigator.pushNamed(
                        context, menuOpciones[11].route);
          }, icon: const Icon(Icons.shopping_cart))
        ],
      ),
      drawer: Drawer(
        child: Container(
          decoration: const BoxDecoration(color: Colors.orange),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.center,
            children:  [
              Padding(
                padding: EdgeInsets.only(top:40 , left: 50),
                child: Row(
                  children: [
                    const Icon(Icons.person,size:30 ,
                                  color: AppTheme.sevenly),
                               
                              const SizedBox(width: 5),
                              TextButton(onPressed: () { 
                                Navigator.pushNamed(
                        context, menuOpciones[0].route);
                               },
                              child:const Text('Mi perfil',
                                style:   TextStyle(
                                    color: Colors.white, fontSize: 25), ),
                              ),
                  ],
                              
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:40 , left: 50),
                child: Row(
                  children: [
                    const Icon(Icons.delivery_dining,size:30 ,
                                  color: AppTheme.sevenly),
                               
                              const SizedBox(width: 5),
                              TextButton(onPressed: () { 
                                Navigator.pushNamed(
                        context, menuOpciones[1].route);
                               },
                              child:const Text('Mi pedido Actual',
                                style:   TextStyle(
                                    color: Colors.white, fontSize: 25), ),
                              ),
                  ],
                              
                ),
              ),
               Padding(
                padding: EdgeInsets.only(top:40 , left: 50),
                child: Row(
                  children: [
                    const Icon(Icons.book_online,size:30 ,
                                  color: AppTheme.sevenly),
                               
                              const SizedBox(width: 5),
                              TextButton(onPressed: () { 
                                Navigator.pushNamed(
                        context, menuOpciones[2].route);
                               },
                              child:const Text('Mi Historial', 
                                style:   TextStyle(
                                    color: Colors.white, fontSize: 25), ),
                              ),
                  ],
                              
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top:40 , left: 50),
                child: Row(
                  children: [
                    const Icon(Icons.exit_to_app,size:30 ,
                                  color: AppTheme.sevenly),
                               
                              const SizedBox(width: 5),
                              TextButton(onPressed: () { 
                                Navigator.pushNamed(
                        context, menuOpciones[3].route);
                               },
                              child:const Text('Salir', 
                                style:   TextStyle(
                                    color: Colors.white, fontSize: 25), ),
                              ),
                  ],
                              
                ),
              ),
            ],
          ),

         /* child: ListView.separated(
              itemBuilder: (context, int index) => Padding(
                    padding: const EdgeInsets.only(left: 40, top: 20),
                    child: ListTile(
                      leading: Icon(
                        menuOpciones[index].icon,
                        color: Colors.blue,
                      ),
                      title: Text(
                        menuOpciones[index].name,
                        style: const TextStyle(color: Colors.white),
                      ),
                      onTap: () {
                        Navigator.pushNamed(context, menuOpciones[index].route);
                      },
                    ),
                  ),
              separatorBuilder: (_, __) => const Divider(),
              itemCount: menuOpciones.length),*/
        ),
      ),
      body: Column(
        children: [ 
          Container(
            height: 36,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.orange),
            child: const Center(
              child: Text(
                'Seleccione una opcion',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              //padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
              children: const [
                SizedBox(
                  height: 20,
                ),
                CardScreen(
                    imageUrl:
                        'https://img.freepik.com/foto-gratis/vista-lateral-doble-hamburguesa-queso-empanadas-carne-parrilla-queso-hojas-lechuga-bollos_141793-4883.jpg?size=626&ext=jpg&ga=GA1.2.1430654558.1654749276',
                    textoBoton: 'Promocion diaria',
                    alturaCard: 140,
                    redireccion: 6),
                SizedBox(
                  height: 40,
                ),
                CardScreen(
                    imageUrl:
                        'https://img.freepik.com/foto-gratis/conjunto-hamburguesas-carne-tomates-queso-cebolla-ensalada-comida-calle-vista-superior-sobre-fondo-piedra-negra_187166-4136.jpg?size=626&ext=jpg&ga=GA1.2.1430654558.1654749276',
                    textoBoton: 'Combo Familiar',
                    alturaCard: 140,
                    redireccion: 9),
                SizedBox(
                  height: 40,
                ),
                CardScreen(
                    imageUrl:
                        'https://img.freepik.com/foto-gratis/vista-frontal-deliciosa-hamburguesa-queso-sobre-fondo-oscuro_179666-19335.jpg?size=626&ext=jpg&ga=GA1.2.1430654558.1654749276',
                    textoBoton: 'Combos Kids',
                    alturaCard: 140,
                    redireccion: 8),
                SizedBox(
                  height: 40,
                ),
                
              ],
            ),
          ),
        ],
      ),
    );
  }
}
/*
child: ListView(                  
                  padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
                  children: const [
                    CardScreen(imageUrl: 'https://m.media-amazon.com/images/I/61nf30yb6qL._AC_SX425_.jpg',)
                  ],
                ),
 */
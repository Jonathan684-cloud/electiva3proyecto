import 'package:flutter/material.dart';
import '../resources/menu.dart';
import '../router/app_routes.dart';
import '../theme/appTheme.dart';

class Todo {
  final String title;
  final String price;
  final String imagen;


  const Todo(this.title, this.price, this.imagen);
}
class PromoDiariaScreen extends StatefulWidget {
  const PromoDiariaScreen({Key? key}) : super(key: key);

  

  @override
  State<PromoDiariaScreen> createState() => _PromoDiariaScreenState();
}

class _PromoDiariaScreenState extends State<PromoDiariaScreen> {  
  
  @override
  Widget build(BuildContext context) {    
    final menuOpciones = AppRouteSesion.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Promocion Diaria'),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Container(
                width: double.maxFinite,
                height: MediaQuery.of(context).size.height * (4 / 100),
                decoration: const BoxDecoration(color: AppTheme.fourth),
                child: const Center(
                    child: Text(
                  'Opciones de combos a escoger',
                  style: TextStyle(fontSize: 22, color: AppTheme.sixted),
                ))),
            SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Column(
                  children: List.generate(felicidad.length, (index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 15.0),
                      child: Card(
                          clipBehavior: Clip.antiAlias,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          elevation: 25,
                          shadowColor: Colors.amberAccent,
                          child: SingleChildScrollView(
                            child: Stack(
                              alignment: AlignmentDirectional.bottomCenter,
                              children: [ 
                                Image(
                                  image: NetworkImage(felicidad[index]['img']),
                                  width: 360,
                                  height: 210,
                                  fit: BoxFit.cover,
                                ),
                                Container(
                                  height: 35,
                                  width: 360,
                                  
                                  child: ElevatedButton(
                                    style: ButtonStyle(
                                      backgroundColor: MaterialStateProperty.all(Colors.red.withOpacity(0.5))

                                     ),
                                    onPressed: () => {
                                       Navigator.pushNamed(
                                          context, menuOpciones[7].route)
                                    },
                                    child: Center(
                                        child: Text(
                                            felicidad[index]['nombre'] +
                                                ' ' +
                                                felicidad[index]['precio'],
                                            style: const  TextStyle(
                                                color: AppTheme.second,
                                                fontSize: 22,
                                                fontWeight: FontWeight.bold)),
                                      ),
                                  ),
                                )
                              ],
                            ),
                          )),
                    );
                  }),
                )),
                SizedBox(height: 40,)
          ]),
        ));
  }
}

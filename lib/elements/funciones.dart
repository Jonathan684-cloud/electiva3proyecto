import 'package:flutter/material.dart';

void alertaConfirm(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 255, 0, 43),
          elevation: 5,
          title: const Text('Agregar a la cesta', textAlign: TextAlign.center,),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('¿Estas seguro?'),     
              FlutterLogo() 
            ],
          ),
          actions: [
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Cancelar')),
            TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('Aceptar')),
          ],
        );
      });
}
void alertaConfirmAgregado(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        Future.delayed(Duration(seconds: 3),() {
          Navigator.of(context).pop(true);
        });
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 59, 36, 5),
          elevation: 5,           
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Se añadio a la cesta',style: TextStyle(color: Colors.white, fontSize: 25),textAlign: TextAlign.center,),    
              Icon(Icons.shopping_cart , size: 50,color: Colors.white,) 
            ],
          ),
          
          
        );
      });
}
void alertaConfirmacionPedido(BuildContext context) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        Future.delayed(Duration(seconds: 3),() {
          Navigator.of(context).pop(true);
        });
        return AlertDialog(
          backgroundColor: Color.fromARGB(255, 59, 36, 5),
          elevation: 5,           
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(10)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Text('Su pedido ha sido tomado',style: TextStyle(color: Colors.white, fontSize: 25),textAlign: TextAlign.center,),  
              Text('Preparando...',style: TextStyle(color: Colors.white, fontSize: 25),textAlign: TextAlign.center,),     
              Icon(Icons.shopping_cart , size: 50,color: Colors.white,) 
            ],
          ),
          
          
        );
      });
}
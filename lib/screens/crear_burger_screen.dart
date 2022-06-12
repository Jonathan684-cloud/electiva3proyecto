import 'package:proyectoelectivaa/theme/appTheme.dart';
import 'package:flutter/material.dart';

class CreateBurgerScreen extends StatelessWidget {
  const CreateBurgerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Crea tu propia Hamburguesa'),
        ),
        body: const Center(
          child: Text(
            'Crea tu propia Hamburguesa',
            style: TextStyle(color: AppTheme.fourth, fontSize: 35),
          ),
        ));
  }
}

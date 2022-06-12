import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';

import '../resources/menu.dart';  

class CardSwiper extends StatelessWidget {
  const CardSwiper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
 List imagenes = [ 'Burger1.png',  'Burger2.png',  'Burger3.png',  'Burger4.png'];
    final size = MediaQuery.of(context).size;
    return Container(
      width: double.infinity,
      height: 180, 
      color: Colors.purpleAccent,
      child: Swiper(
        itemCount: imagenes.length,
        layout: SwiperLayout.STACK,
        itemWidth: size.width * 0.6,
        itemHeight: 180,
        itemBuilder: ( _ , int index ) {
          return  ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child:  FadeInImage(
                placeholder: AssetImage('assets/no-image.jpg'), 
                image: AssetImage(imagenes[index]),
                fit: BoxFit.cover,
                 ),
            );
          
        },
      ),
    );
  }
}